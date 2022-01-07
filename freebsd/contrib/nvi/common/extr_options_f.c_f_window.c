
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int SCR ;
typedef int OPTION ;


 int O_LINES ;
 int O_VAL (int *,int ) ;

int
f_window(
 SCR *sp,
 OPTION *op,
 char *str,
 u_long *valp)
{
 if (*valp >= O_VAL(sp, O_LINES) - 1 &&
     (*valp = O_VAL(sp, O_LINES) - 1) == 0)
  *valp = 1;
 return (0);
}
