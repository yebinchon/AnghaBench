
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SCR ;


 int M_BERR ;
 int msgq (int *,int ,char*) ;

__attribute__((used)) static void
noprev(SCR *sp)
{
 msgq(sp, M_BERR, "178|No previous F, f, T or t search");
}
