
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef int recno_t ;
struct TYPE_19__ {int lno; } ;
struct TYPE_18__ {int lno; } ;
struct TYPE_22__ {int count; TYPE_2__ addr2; TYPE_1__ addr1; int iflags; } ;
struct TYPE_21__ {int lno; int cno; } ;
struct TYPE_20__ {int lno; int cno; } ;
typedef TYPE_3__ SCR ;
typedef TYPE_4__ MARK ;
typedef TYPE_5__ EXCMD ;


 int ABSMARK1 ;
 int E_ADDR_DEF ;

 int E_C_COUNT ;




 int FL_ISSET (int ,int) ;
 int F_ISSET (TYPE_5__*,int ) ;
 int NEEDFILE (TYPE_3__*,TYPE_5__*) ;
 int O_VAL (TYPE_3__*,int ) ;
 int O_WINDOW ;
 scalar_t__ db_last (TYPE_3__*,int*) ;
 scalar_t__ ex_pr (TYPE_3__*,TYPE_5__*) ;
 int ex_puts (TYPE_3__*,char*) ;
 int mark_set (TYPE_3__*,int ,TYPE_4__*,int) ;

int
ex_z(SCR *sp, EXCMD *cmdp)
{
 MARK abs;
 recno_t cnt, equals, lno;
 int eofcheck;

 NEEDFILE(sp, cmdp);
 if (FL_ISSET(cmdp->iflags, E_C_COUNT))
  cnt = cmdp->count;
 else
  cnt = O_VAL(sp, O_WINDOW) - 1;

 equals = 0;
 eofcheck = 0;
 lno = cmdp->addr1.lno;

 switch (FL_ISSET(cmdp->iflags,
     132 | 131 | 130 | 129 | 128)) {
 case 132:
  eofcheck = 1;
  if (lno > cnt * 2)
   cmdp->addr1.lno = (lno - cnt * 2) + 1;
  else
   cmdp->addr1.lno = 1;
  cmdp->addr2.lno = (cmdp->addr1.lno + cnt) - 1;
  break;
 case 131:
  cmdp->addr1.lno = lno > cnt ? (lno - cnt) + 1 : 1;
  cmdp->addr2.lno = lno;
  break;
 case 130:







  eofcheck = 1;
  cnt = (cnt - 1) / 2;
  cmdp->addr1.lno = lno > cnt ? lno - cnt : 1;
  cmdp->addr2.lno = lno + cnt;





  abs.lno = sp->lno;
  abs.cno = sp->cno;
  (void)mark_set(sp, ABSMARK1, &abs, 1);
  break;
 case 129:
  eofcheck = 1;
  cnt = (cnt - 1) / 2;
  cmdp->addr1.lno = lno > cnt ? lno - cnt : 1;
  cmdp->addr2.lno = lno - 1;
  if (ex_pr(sp, cmdp))
   return (1);
  (void)ex_puts(sp, "----------------------------------------\n");
  cmdp->addr2.lno = cmdp->addr1.lno = equals = lno;
  if (ex_pr(sp, cmdp))
   return (1);
  (void)ex_puts(sp, "----------------------------------------\n");
  cmdp->addr1.lno = lno + 1;
  cmdp->addr2.lno = (lno + cnt) - 1;
  break;
 default:

  if (F_ISSET(cmdp, E_ADDR_DEF))
   ++lno;

 case 128:
  eofcheck = 1;
  cmdp->addr1.lno = lno;
  cmdp->addr2.lno = (lno + cnt) - 1;
  break;
 }

 if (eofcheck) {
  if (db_last(sp, &lno))
   return (1);
  if (cmdp->addr2.lno > lno)
   cmdp->addr2.lno = lno;
 }

 if (ex_pr(sp, cmdp))
  return (1);
 if (equals)
  sp->lno = equals;
 return (0);
}
