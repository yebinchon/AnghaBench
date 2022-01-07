
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


typedef int u_long ;
typedef int buf ;
struct TYPE_19__ {int lno; } ;
struct TYPE_22__ {int iflags; int count; TYPE_1__ addr1; } ;
struct TYPE_21__ {int lno; TYPE_2__* ep; int refcnt; struct TYPE_21__* frp; int cno; } ;
struct TYPE_20__ {int refcnt; } ;
typedef TYPE_3__ SCR ;
typedef TYPE_4__ EXCMD ;
typedef int CHAR_T ;


 int CHAR2INT (TYPE_3__*,char*,size_t,int *,size_t) ;
 int CH_NOMAP ;
 int CH_QUOTED ;

 int E_C_COUNT ;






 int FL_ISSET (int ,int) ;
 int FR_CURSORSET ;
 int F_CLR (TYPE_3__*,int) ;
 scalar_t__ F_ISSET (TYPE_3__*,int ) ;
 int F_SET (TYPE_3__*,int ) ;
 int M_ERR ;
 int O_ISSET (TYPE_3__*,int ) ;
 int O_LIST ;
 int O_NUMBER ;
 int O_OPEN ;
 int O_SET (TYPE_3__*,int ) ;
 int SC_EX ;
 int SC_EX_GLOBAL ;
 int SC_EX_WAIT_NO ;
 int SC_SCR_EX ;
 int SC_SCR_EXWROTE ;
 int SC_VI ;
 scalar_t__ ex_init (TYPE_3__*) ;
 int ex_puts (TYPE_3__*,char*) ;
 int msgq (TYPE_3__*,int ,char*) ;
 int nonblank (TYPE_3__*,int,int *) ;
 size_t snprintf (char*,int,char*,int ,int,...) ;
 int v_event_push (TYPE_3__*,int *,int *,size_t,int) ;
 scalar_t__ vi (TYPE_3__**) ;

int
ex_visual(SCR *sp, EXCMD *cmdp)
{
 SCR *tsp;
 size_t len;
 int pos;
 char buf[256];
 size_t wlen;
 CHAR_T *wp;


 if (!O_ISSET(sp, O_OPEN)) {
  msgq(sp, M_ERR,
     "175|The visual command requires that the open option be set");
  return (1);
 }


 sp->lno = cmdp->addr1.lno == 0 ? 1 : cmdp->addr1.lno;





 switch (FL_ISSET(cmdp->iflags,
     134 | 133 | 132 | 129)) {
 case 134:
  pos = '^';
  break;
 case 133:
  pos = '-';
  break;
 case 132:
  pos = '.';
  break;
 case 129:
  pos = '+';
  break;
 default:
  sp->frp->lno = sp->lno;
  sp->frp->cno = 0;
  (void)nonblank(sp, sp->lno, &sp->cno);
  F_SET(sp->frp, FR_CURSORSET);
  goto nopush;
 }

 if (FL_ISSET(cmdp->iflags, E_C_COUNT))
  len = snprintf(buf, sizeof(buf),
       "%luz%c%lu", (u_long)sp->lno, pos, cmdp->count);
 else
  len = snprintf(buf, sizeof(buf), "%luz%c", (u_long)sp->lno, pos);
 CHAR2INT(sp, buf, len, wp, wlen);
 (void)v_event_push(sp, ((void*)0), wp, wlen, CH_NOMAP | CH_QUOTED);
 switch (FL_ISSET(cmdp->iflags, 131 | 130 | 128)) {
 case 131:
  O_SET(sp, O_NUMBER);
  break;
 case 130:
  O_SET(sp, O_LIST);
  break;
 case 128:
  break;
 }

nopush:
 if (!F_ISSET(sp, SC_SCR_EXWROTE))
  F_SET(sp, SC_EX_WAIT_NO);

 if (F_ISSET(sp, SC_EX_GLOBAL)) {





  ++sp->refcnt;
  ++sp->ep->refcnt;






  tsp = sp;
  if (vi(&tsp))
   return (1);
  if (ex_init(sp))
   return (1);


  (void)ex_puts(sp, "\n");
 } else {
  F_CLR(sp, SC_EX | SC_SCR_EX);
  F_SET(sp, SC_VI);
 }
 return (0);
}
