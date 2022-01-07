
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int lno; size_t cno; } ;
struct TYPE_10__ {TYPE_1__ m_final; } ;
typedef TYPE_2__ VICMD ;
struct TYPE_11__ {int lno; size_t cno; } ;
typedef TYPE_3__ SCR ;


 int F_CLR (TYPE_2__*,int ) ;
 int F_SET (TYPE_2__*,int ) ;
 int VM_RCM_MASK ;
 int VM_RCM_SET ;
 scalar_t__ db_eget (TYPE_3__*,int,int *,size_t*,int *) ;

__attribute__((used)) static int
v_ex_done(SCR *sp, VICMD *vp)
{
 size_t len;
 if (db_eget(sp, sp->lno, ((void*)0), &len, ((void*)0))) {
  sp->lno = 1;
  sp->cno = 0;
 } else if (sp->cno >= len)
  sp->cno = len ? len - 1 : 0;

 vp->m_final.lno = sp->lno;
 vp->m_final.cno = sp->cno;





 F_CLR(vp, VM_RCM_MASK);
 F_SET(vp, VM_RCM_SET);

 return (0);
}
