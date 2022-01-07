
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_long ;
typedef int SCR ;
typedef int OPTION ;


 int F_CLR (int *,int ) ;
 int F_SET (int *,int ) ;
 int SC_READONLY ;

int
f_readonly(
 SCR *sp,
 OPTION *op,
 char *str,
 u_long *valp)
{




 if (*valp)
  F_SET(sp, SC_READONLY);
 else
  F_CLR(sp, SC_READONLY);
 return (0);
}
