
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int SCR ;
typedef int OPTION ;


 int msg_open (int *,char*) ;

int
f_msgcat(
 SCR *sp,
 OPTION *op,
 char *str,
 u_long *valp)
{
 (void)msg_open(sp, str);
 return (0);
}
