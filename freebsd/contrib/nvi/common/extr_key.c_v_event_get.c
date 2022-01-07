
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_4__ ;
typedef struct TYPE_27__ TYPE_3__ ;
typedef struct TYPE_26__ TYPE_2__ ;
typedef struct TYPE_25__ TYPE_1__ ;


typedef int u_int32_t ;
struct TYPE_27__ {scalar_t__ i_cnt; size_t i_next; TYPE_4__* i_event; scalar_t__ (* scr_event ) (TYPE_2__*,TYPE_4__*,int,int) ;int seqb; } ;
struct TYPE_28__ {int e_event; int e_c; scalar_t__ e_value; TYPE_3__ e_ch; } ;
struct TYPE_26__ {TYPE_3__* gp; } ;
struct TYPE_25__ {int* output; int ilen; int olen; } ;
typedef TYPE_1__ SEQ ;
typedef TYPE_2__ SCR ;
typedef TYPE_3__ GS ;
typedef TYPE_4__ EVENT ;


 int CH_MAPPED ;
 int CH_NOMAP ;
 int CH_NOT_DIGIT ;
 int EC_INTERRUPT ;
 int EC_MAPCOMMAND ;
 int EC_MAPINPUT ;
 int EC_MAPNODIGIT ;
 int EC_QUOTED ;
 int EC_RAW ;
 int EC_TIMEOUT ;
 int const E_CHARACTER ;





 int F_INIT (TYPE_3__*,int ) ;
 scalar_t__ F_ISSET (TYPE_3__*,int) ;
 int F_SET (TYPE_3__*,int ) ;
 int G_INTERRUPTED ;
 int G_SCRWIN ;
 int ISDIGIT (int) ;
 scalar_t__ K_ESCAPE ;
 scalar_t__ K_NOTUSED ;
 int LF_ISSET (int) ;
 int MAX_BIT_SEQ ;
 int O_ESCAPETIME ;
 scalar_t__ O_ISSET (TYPE_2__*,int ) ;
 int O_KEYTIME ;
 int O_REMAP ;
 int O_TIMEOUT ;
 int O_VAL (TYPE_2__*,int ) ;
 int QREM (int) ;
 int RCV_EMAIL ;
 int RCV_ENDSESSION ;
 int RCV_PRESERVE ;
 int SEQ_COMMAND ;
 int SEQ_INPUT ;
 int bit_test (int ,int) ;
 int e_memcmp (int*,TYPE_4__*,int) ;
 TYPE_1__* seq_find (TYPE_2__*,int *,TYPE_4__*,int *,scalar_t__,int ,int*) ;
 scalar_t__ sscr_input (TYPE_2__*) ;
 scalar_t__ stub1 (TYPE_2__*,TYPE_4__*,int,int) ;
 scalar_t__ stub2 (TYPE_2__*,TYPE_4__*,int,int) ;
 int v_event_append (TYPE_2__*,TYPE_4__*) ;
 scalar_t__ v_event_push (TYPE_2__*,int *,int*,int,int) ;
 int v_sync (TYPE_2__*,int) ;

int
v_event_get(
 SCR *sp,
 EVENT *argp,
 int timeout,
 u_int32_t flags)
{
 EVENT *evp, ev;
 GS *gp;
 SEQ *qp;
 int init_nomap, ispartial, istimeout, remap_cnt;

 gp = sp->gp;


 if (argp == ((void*)0))
  argp = &ev;

retry: istimeout = remap_cnt = 0;





 if (gp->i_cnt != 0 && LF_ISSET(EC_TIMEOUT))
  return (0);





 if (gp->i_cnt == 0 || LF_ISSET(EC_INTERRUPT | EC_TIMEOUT)) {




  if (F_ISSET(gp, G_SCRWIN) && sscr_input(sp))
   return (1);
loop: if (gp->scr_event(sp, argp,
      LF_ISSET(EC_INTERRUPT | EC_QUOTED | EC_RAW), timeout))
   return (1);
  switch (argp->e_event) {
  case 132:
  case 130:
  case 129:




   v_sync(sp, RCV_ENDSESSION | RCV_PRESERVE |
       (argp->e_event == 129 ? 0: RCV_EMAIL));
   return (1);
  case 128:
   istimeout = 1;
   break;
  case 131:

   F_SET(sp->gp, G_INTERRUPTED);





   if (LF_ISSET(EC_INTERRUPT))
    return (0);
   goto append;
  default:
append: if (v_event_append(sp, argp))
    return (1);
   break;
  }
 }






 if (LF_ISSET(EC_INTERRUPT | EC_TIMEOUT))
  return (0);

newmap: evp = &gp->i_event[gp->i_next];





 if (evp->e_event != E_CHARACTER) {
  *argp = *evp;
  QREM(1);
  return (0);
 }
 if (istimeout || F_ISSET(&evp->e_ch, CH_NOMAP) ||
     !LF_ISSET(EC_MAPCOMMAND | EC_MAPINPUT) ||
     ((evp->e_c & ~MAX_BIT_SEQ) == 0 &&
     !bit_test(gp->seqb, evp->e_c)))
  goto nomap;


 qp = seq_find(sp, ((void*)0), evp, ((void*)0), gp->i_cnt,
     LF_ISSET(EC_MAPCOMMAND) ? SEQ_COMMAND : SEQ_INPUT, &ispartial);
 if (ispartial) {
  if (O_ISSET(sp, O_TIMEOUT))
   timeout = (evp->e_value == K_ESCAPE ?
       O_VAL(sp, O_ESCAPETIME) :
       O_VAL(sp, O_KEYTIME)) * 100;
  else
   timeout = 0;
  goto loop;
 }


 if (qp == ((void*)0)) {
nomap: if (!ISDIGIT(evp->e_c) && LF_ISSET(EC_MAPNODIGIT))
   goto not_digit;
  *argp = *evp;
  QREM(1);
  return (0);
 }





 if (LF_ISSET(EC_MAPNODIGIT) &&
     qp->output != ((void*)0) && !ISDIGIT(qp->output[0])) {
not_digit: argp->e_c = CH_NOT_DIGIT;
  argp->e_value = K_NOTUSED;
  argp->e_event = E_CHARACTER;
  F_INIT(&argp->e_ch, 0);
  return (0);
 }


 init_nomap = !e_memcmp(qp->output, &gp->i_event[gp->i_next], qp->ilen);


 QREM(qp->ilen);


 if (qp->output == ((void*)0))
  goto retry;


 if (O_ISSET(sp, O_REMAP)) {







  if ((++remap_cnt == 1 || remap_cnt % 10 == 0) &&
      (gp->scr_event(sp, &ev,
      EC_INTERRUPT, 0) || ev.e_event == 131)) {
   F_SET(sp->gp, G_INTERRUPTED);
   argp->e_event = 131;
   return (0);
  }







  if (init_nomap) {
   if (v_event_push(sp, ((void*)0), qp->output + qp->ilen,
       qp->olen - qp->ilen, CH_MAPPED))
    return (1);
   if (v_event_push(sp, ((void*)0),
       qp->output, qp->ilen, CH_NOMAP | CH_MAPPED))
    return (1);
   evp = &gp->i_event[gp->i_next];
   goto nomap;
  }
  if (v_event_push(sp, ((void*)0), qp->output, qp->olen, CH_MAPPED))
   return (1);
  goto newmap;
 }


 if (v_event_push(sp, ((void*)0), qp->output, qp->olen, CH_MAPPED | CH_NOMAP))
  return (1);

 goto nomap;
}
