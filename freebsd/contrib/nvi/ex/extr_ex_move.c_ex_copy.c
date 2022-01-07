
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int recno_t ;
struct TYPE_16__ {int member_0; } ;
struct TYPE_20__ {int textq; int flags; TYPE_1__ member_0; } ;
struct TYPE_18__ {int lno; scalar_t__ cno; } ;
struct TYPE_19__ {int lineno; TYPE_3__ addr2; TYPE_3__ addr1; } ;
struct TYPE_17__ {int lno; scalar_t__ cno; } ;
typedef TYPE_2__ SCR ;
typedef TYPE_3__ MARK ;
typedef TYPE_4__ EXCMD ;
typedef TYPE_5__ CB ;


 int CB_LMODE ;
 int ENTIRE_LINE ;
 int NEEDFILE (TYPE_2__*,TYPE_4__*) ;
 int TAILQ_INIT (int ) ;
 scalar_t__ cut_line (TYPE_2__*,int,int ,int ,TYPE_5__*) ;
 scalar_t__ put (TYPE_2__*,TYPE_5__*,int *,TYPE_3__*,TYPE_3__*,int) ;
 int text_lfree (int ) ;

int
ex_copy(SCR *sp, EXCMD *cmdp)
{
 CB cb = {{ 0 }};
 MARK fm1, fm2, m, tm;
 recno_t cnt;
 int rval;

 rval = 0;

 NEEDFILE(sp, cmdp);






 fm1 = cmdp->addr1;
 fm2 = cmdp->addr2;
 TAILQ_INIT(cb.textq);
 for (cnt = fm1.lno; cnt <= fm2.lno; ++cnt)
  if (cut_line(sp, cnt, 0, ENTIRE_LINE, &cb)) {
   rval = 1;
   goto err;
  }
 cb.flags |= CB_LMODE;


 tm.lno = cmdp->lineno;
 tm.cno = 0;
 if (put(sp, &cb, ((void*)0), &tm, &m, 1))
  rval = 1;
 else {





  cnt = (fm2.lno - fm1.lno) + 1;
  sp->lno = m.lno + (cnt - 1);
  sp->cno = 0;
 }
err: text_lfree(cb.textq);
 return (rval);
}
