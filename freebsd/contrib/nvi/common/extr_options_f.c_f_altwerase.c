
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_long ;
typedef int SCR ;
typedef int OPTION ;


 int O_CLR (int *,int ) ;
 int O_TTYWERASE ;

int
f_altwerase(
 SCR *sp,
 OPTION *op,
 char *str,
 u_long *valp)
{
 if (*valp)
  O_CLR(sp, O_TTYWERASE);
 return (0);
}
