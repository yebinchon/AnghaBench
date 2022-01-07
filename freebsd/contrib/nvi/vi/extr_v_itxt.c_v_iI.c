
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int lno; } ;
struct TYPE_10__ {TYPE_1__ m_start; } ;
typedef TYPE_2__ VICMD ;
struct TYPE_11__ {scalar_t__ cno; } ;
typedef TYPE_3__ SCR ;


 int LOG_CORRECT ;
 scalar_t__ nonblank (TYPE_3__*,int ,scalar_t__*) ;
 int v_ii (TYPE_3__*,TYPE_2__*) ;

int
v_iI(SCR *sp, VICMD *vp)
{
 sp->cno = 0;
 if (nonblank(sp, vp->m_start.lno, &sp->cno))
  return (1);

 LOG_CORRECT;

 return (v_ii(sp, vp));
}
