
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lcond ;


 int A_GETCOND ;
 int A_OLDGETCOND ;
 scalar_t__ EINVAL ;
 int auditon (int ,...) ;
 scalar_t__ errno ;

int
audit_get_cond(int *cond)
{
 int ret;

 ret = auditon(A_GETCOND, cond, sizeof(*cond));
 return (ret);
}
