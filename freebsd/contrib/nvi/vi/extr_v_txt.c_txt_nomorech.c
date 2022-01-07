
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SCR ;


 int M_BERR ;
 int msgq (int *,int ,char*) ;

__attribute__((used)) static void
txt_nomorech(SCR *sp)
{
 msgq(sp, M_BERR, "194|No more characters to erase");
}
