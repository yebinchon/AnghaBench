
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int SCR ;
typedef int OPTION ;


 int M_ERR ;
 int msgq (int *,int ,char*) ;

int
f_lisp(
 SCR *sp,
 OPTION *op,
 char *str,
 u_long *valp)
{
 msgq(sp, M_ERR, "044|The lisp option is not implemented");
 return (0);
}
