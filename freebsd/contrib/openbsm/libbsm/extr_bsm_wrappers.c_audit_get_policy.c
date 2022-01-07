
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lpolicy ;


 int A_GETPOLICY ;
 int A_OLDGETPOLICY ;
 scalar_t__ EINVAL ;
 int auditon (int ,...) ;
 scalar_t__ errno ;

int
audit_get_policy(int *policy)
{
 int ret;

 ret = auditon(A_GETPOLICY, policy, sizeof(*policy));
 return (ret);
}
