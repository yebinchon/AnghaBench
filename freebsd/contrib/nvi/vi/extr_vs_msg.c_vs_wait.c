
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


typedef int sw_t ;
struct TYPE_19__ {scalar_t__ linecount; int totalcount; } ;
typedef TYPE_1__ VI_PRIVATE ;
struct TYPE_22__ {scalar_t__ e_event; char e_c; } ;
struct TYPE_21__ {int (* scr_bell ) (TYPE_2__*) ;int (* scr_refresh ) (TYPE_2__*,int ) ;int (* scr_clrtoeol ) (TYPE_2__*) ;int (* scr_addstr ) (TYPE_2__*,char const*,size_t) ;int (* scr_move ) (TYPE_2__*,int ,int ) ;} ;
struct TYPE_20__ {TYPE_3__* gp; } ;
typedef TYPE_2__ SCR ;
typedef TYPE_3__ GS ;
typedef TYPE_4__ EVENT ;


 char CH_QUIT ;
 int CMSG_CONT ;
 int CMSG_CONT_EX ;
 int CMSG_CONT_Q ;
 int CMSG_CONT_S ;
 scalar_t__ E_CHARACTER ;
 scalar_t__ E_INTERRUPT ;
 int F_SET (TYPE_3__*,int ) ;
 int G_INTERRUPTED ;
 scalar_t__ IS_ONELINE (TYPE_2__*) ;
 int LASTLINE (TYPE_2__*) ;



 TYPE_1__* VIP (TYPE_2__*) ;
 int abort () ;
 char* msg_cmsg (TYPE_2__*,int ,size_t*) ;
 int stub1 (TYPE_2__*,int ,int ) ;
 int stub2 (TYPE_2__*,char const*,size_t) ;
 int stub3 (TYPE_2__*) ;
 int stub4 (TYPE_2__*,int ) ;
 int stub5 (TYPE_2__*) ;
 scalar_t__ v_event_get (TYPE_2__*,TYPE_4__*,int ,int ) ;

__attribute__((used)) static void
vs_wait(SCR *sp, int *continuep, sw_t wtype)
{
 EVENT ev;
 VI_PRIVATE *vip;
 const char *p;
 GS *gp;
 size_t len;

 gp = sp->gp;
 vip = VIP(sp);

 (void)gp->scr_move(sp, LASTLINE(sp), 0);
 if (IS_ONELINE(sp))
  p = msg_cmsg(sp, CMSG_CONT_S, &len);
 else
  switch (wtype) {
  case 128:
   p = msg_cmsg(sp, CMSG_CONT_Q, &len);
   break;
  case 129:
   p = msg_cmsg(sp, CMSG_CONT_EX, &len);
   break;
  case 130:
   p = msg_cmsg(sp, CMSG_CONT, &len);
   break;
  default:
   abort();

  }
 (void)gp->scr_addstr(sp, p, len);

 ++vip->totalcount;
 vip->linecount = 0;

 (void)gp->scr_clrtoeol(sp);
 (void)gp->scr_refresh(sp, 0);


 if (continuep != ((void*)0))
  *continuep = 0;
 for (;;) {
  if (v_event_get(sp, &ev, 0, 0))
   return;
  if (ev.e_event == E_CHARACTER)
   break;
  if (ev.e_event == E_INTERRUPT) {
   ev.e_c = CH_QUIT;
   F_SET(gp, G_INTERRUPTED);
   break;
  }
  (void)gp->scr_bell(sp);
 }
 switch (wtype) {
 case 128:
  if (ev.e_c == CH_QUIT)
   F_SET(gp, G_INTERRUPTED);
  break;
 case 129:
  if (ev.e_c == ':' && continuep != ((void*)0))
   *continuep = 1;
  break;
 case 130:
  break;
 }
}
