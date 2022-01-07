
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_32__ TYPE_4__ ;
typedef struct TYPE_31__ TYPE_3__ ;
typedef struct TYPE_30__ TYPE_2__ ;
typedef struct TYPE_29__ TYPE_1__ ;


typedef int u_int32_t ;
typedef int carat_t ;
struct TYPE_31__ {int (* scr_ex_adjust ) (TYPE_2__*,int ) ;} ;
struct TYPE_32__ {int e_event; int e_value; char e_c; TYPE_3__ e_ch; } ;
struct TYPE_30__ {scalar_t__ lno; TYPE_3__* gp; } ;
struct TYPE_29__ {int lb_len; scalar_t__ len; char* lb; scalar_t__ ai; scalar_t__ lno; } ;
typedef int TEXTH ;
typedef TYPE_1__ TEXT ;
typedef TYPE_2__ SCR ;
typedef TYPE_3__ GS ;
typedef TYPE_4__ EVENT ;
typedef int ARG_CHAR_T ;


 int BINC_GOTOW (TYPE_2__*,char*,int,scalar_t__) ;
 int CH_MAPPED ;



 int EX_TERM_CE ;






 scalar_t__ F_ISSET (TYPE_3__*,int ) ;
 int G_SCRIPTED ;
 int ISCNTRL (char) ;



 int K_FORMFEED ;

 int K_TAB ;

 int LF_CLR (int ) ;
 scalar_t__ LF_ISSET (int ) ;
 int LF_SET (int ) ;
 int MEMCPY (char*,char*,scalar_t__) ;
 scalar_t__ OOBLNO ;
 int TAILQ_EMPTY (int *) ;
 TYPE_1__* TAILQ_FIRST (int *) ;
 int TAILQ_INSERT_HEAD (int *,TYPE_1__*,int ) ;
 int TAILQ_INSERT_TAIL (int *,TYPE_1__*,int ) ;
 int * TAILQ_NEXT (TYPE_1__*,int ) ;
 int TAILQ_REMOVE (int *,TYPE_1__*,int ) ;
 int TXT_AUTOINDENT ;
 int TXT_BACKSLASH ;
 int TXT_BEAUTIFY ;
 int TXT_CNTRLD ;
 int TXT_CR ;
 int TXT_DOTTERM ;
 int TXT_EOFCHAR ;
 int abort () ;
 int free (char*) ;
 int isblank (char) ;
 int putchar (char) ;
 int q ;
 int stub1 (TYPE_2__*,int ) ;
 int stub2 (TYPE_2__*,int ) ;
 int text_free (TYPE_1__*) ;
 TYPE_1__* text_init (TYPE_2__*,int *,int ,int) ;
 int text_lfree (int *) ;
 int txt_dent (TYPE_2__*,TYPE_1__*) ;
 int txt_prompt (TYPE_2__*,TYPE_1__*,int ,int ) ;
 int v_event_err (TYPE_2__*,TYPE_4__*) ;
 scalar_t__ v_event_get (TYPE_2__*,TYPE_4__*,int ,int ) ;
 scalar_t__ v_txt_auto (TYPE_2__*,scalar_t__,TYPE_1__*,scalar_t__,TYPE_1__*) ;

int
ex_txt(SCR *sp, TEXTH *tiqh, ARG_CHAR_T prompt, u_int32_t flags)
{
 EVENT ev;
 GS *gp;
 TEXT ait, *ntp, *tp;
 carat_t carat_st;
 size_t cnt;
 int rval;
 int nochange;

 rval = 0;






 if (!TAILQ_EMPTY(tiqh)) {
  tp = TAILQ_FIRST(tiqh);
  if (TAILQ_NEXT(tp, q) != ((void*)0) || tp->lb_len < 32) {
   text_lfree(tiqh);
   goto newtp;
  }
  tp->len = 0;
 } else {
newtp: if ((tp = text_init(sp, ((void*)0), 0, 32)) == ((void*)0))
   goto err;
  TAILQ_INSERT_HEAD(tiqh, tp, q);
 }


 tp->lno = sp->lno + 1;
 gp = sp->gp;
 if (F_ISSET(gp, G_SCRIPTED))
  LF_CLR(TXT_AUTOINDENT);
 else {
  if (LF_ISSET(TXT_AUTOINDENT)) {
   LF_SET(TXT_EOFCHAR);
   if (v_txt_auto(sp, sp->lno, ((void*)0), 0, tp))
    goto err;
  }
  txt_prompt(sp, tp, prompt, flags);
 }

 for (carat_st = 140, nochange = 0;;) {
  if (v_event_get(sp, &ev, 0, 0))
   goto err;


  switch (ev.e_event) {
  case 138:
   break;
  case 136:
   goto err;
  case 134:
  case 133:
   continue;
  case 137:
   rval = 1;

  case 135:





   goto notlast;
  default:
   v_event_err(sp, &ev);
   goto notlast;
  }







  BINC_GOTOW(sp, tp->lb, tp->lb_len, tp->len + 1);

  switch (ev.e_value) {
  case 130:
   if (!F_ISSET(&ev.e_ch, CH_MAPPED))
    goto ins_ch;

  case 129:





   if (LF_ISSET(TXT_BACKSLASH) &&
       tp->len != 0 && tp->lb[tp->len - 1] == '\\')
    goto ins_ch;







   if (LF_ISSET(TXT_CR)) {
    tp->lb[tp->len] = '\0';
    goto done;
   }





   if (LF_ISSET(TXT_DOTTERM) && tp->len == tp->ai + 1 &&
       tp->lb[tp->len - 1] == '.') {
notlast: TAILQ_REMOVE(tiqh, tp, q);
    text_free(tp);
    goto done;
   }


   if ((ntp = text_init(sp, ((void*)0), 0, 32)) == ((void*)0))
    goto err;
   ntp->lno = tp->lno + 1;
   if (LF_ISSET(TXT_AUTOINDENT)) {
    if (nochange) {
     nochange = 0;
     if (v_txt_auto(sp,
         OOBLNO, &ait, ait.ai, ntp))
      goto err;
     free(ait.lb);
    } else
     if (v_txt_auto(sp,
         OOBLNO, tp, tp->len, ntp))
      goto err;
    carat_st = 140;
   }
   txt_prompt(sp, ntp, prompt, flags);





   tp = ntp;
   TAILQ_INSERT_TAIL(tiqh, tp, q);
   break;
  case 132:
   if (tp->len <= tp->ai && LF_ISSET(TXT_AUTOINDENT))
    carat_st = 141;
   goto ins_ch;
  case 128:
   if (tp->len <= tp->ai && LF_ISSET(TXT_AUTOINDENT))
    carat_st = 139;
   goto ins_ch;
  case 131:







   if (LF_ISSET(TXT_CNTRLD)) {
    for (cnt = 0; cnt < tp->len; ++cnt)
     if (!isblank(tp->lb[cnt]))
      break;
    if (cnt == tp->len) {
     tp->len = 1;
     tp->lb[0] = ev.e_c;
     tp->lb[1] = '\0';





     (void)putchar('\n');
     goto done;
    }
   }
   if (!LF_ISSET(TXT_AUTOINDENT) || tp->len == 0)
    continue;
   switch (carat_st) {
   case 141:
    if (tp->len > tp->ai + 1)
     continue;


    ait.lb = ((void*)0);
    ait.lb_len = 0;
    BINC_GOTOW(sp, ait.lb, ait.lb_len, tp->ai);
    MEMCPY(ait.lb, tp->lb, tp->ai);
    ait.ai = ait.len = tp->ai;

    carat_st = 140;
    nochange = 1;
    goto leftmargin;
   case 139:
    if (tp->len > tp->ai + 1)
     continue;

    carat_st = 140;
leftmargin: (void)gp->scr_ex_adjust(sp, EX_TERM_CE);
    tp->ai = tp->len = 0;
    break;
   case 140:
    if (tp->len > tp->ai)
     continue;

    if (txt_dent(sp, tp))
     goto err;
    break;
   default:
    abort();
   }


   (void)gp->scr_ex_adjust(sp, EX_TERM_CE);
   txt_prompt(sp, tp, prompt, flags);
   break;
  default:







ins_ch: if (LF_ISSET(TXT_BEAUTIFY) && ISCNTRL(ev.e_c) &&
       ev.e_value != K_FORMFEED && ev.e_value != K_TAB)
    break;

   tp->lb[tp->len++] = ev.e_c;
   break;
  }
 }


done: return (rval);

err:
alloc_err:
 return (1);
}
