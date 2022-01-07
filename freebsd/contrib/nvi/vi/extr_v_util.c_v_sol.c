
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SCR ;


 int M_BERR ;
 int msgq (int *,int ,char*) ;

void
v_sol(SCR *sp)
{
 msgq(sp, M_BERR, "200|Already in the first column");
}
