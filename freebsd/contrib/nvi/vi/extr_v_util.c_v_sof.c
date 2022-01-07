
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lno; } ;
typedef int SCR ;
typedef TYPE_1__ MARK ;


 int M_BERR ;
 int msgq (int *,int ,char*) ;

void
v_sof(SCR *sp, MARK *mp)
{
 if (mp == ((void*)0) || mp->lno == 1)
  msgq(sp, M_BERR, "198|Already at the beginning of the file");
 else
  msgq(sp, M_BERR, "199|Movement past the beginning of the file");
}
