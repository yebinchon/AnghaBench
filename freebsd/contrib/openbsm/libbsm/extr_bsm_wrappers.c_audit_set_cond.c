
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lcond ;


 int A_OLDSETCOND ;
 int A_SETCOND ;
 scalar_t__ EINVAL ;
 int auditon (int ,...) ;
 scalar_t__ errno ;

int
audit_set_cond(int *cond)
{
 int ret;

 ret = auditon(A_SETCOND, cond, sizeof(*cond));
 return (ret);
}
