
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SCR ;
typedef int EXCMD ;


 int vs_bg (int *) ;

int
ex_bg(SCR *sp, EXCMD *cmdp)
{
 return (vs_bg(sp));
}
