
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SCR ;
typedef int EXCMD ;


 int CHANGE ;
 int ex_aci (int *,int *,int ) ;

int
ex_change(SCR *sp, EXCMD *cmdp)
{
 return (ex_aci(sp, cmdp, CHANGE));
}
