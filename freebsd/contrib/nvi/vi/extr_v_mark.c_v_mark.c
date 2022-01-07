
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int m_start; int character; } ;
typedef TYPE_1__ VICMD ;
typedef int SCR ;


 int mark_set (int *,int ,int *,int) ;

int
v_mark(SCR *sp, VICMD *vp)
{
 return (mark_set(sp, vp->character, &vp->m_start, 1));
}
