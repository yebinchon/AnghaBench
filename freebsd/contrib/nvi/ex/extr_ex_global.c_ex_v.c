
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SCR ;
typedef int EXCMD ;


 int V ;
 int ex_g_setup (int *,int *,int ) ;

int
ex_v(SCR *sp, EXCMD *cmdp)
{
 return (ex_g_setup(sp, cmdp, V));
}
