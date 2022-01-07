
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int SCR ;
typedef int OPTION ;


 int F_SET (int *,int ) ;
 int SC_SCR_REFORMAT ;

int
f_reformat(
 SCR *sp,
 OPTION *op,
 char *str,
 u_long *valp)
{
 F_SET(sp, SC_SCR_REFORMAT);
 return (0);
}
