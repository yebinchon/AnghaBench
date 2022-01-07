
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__* acl_flagset_t ;


 int EINVAL ;
 int errno ;

int
acl_clear_flags_np(acl_flagset_t flagset_d)
{

 if (flagset_d == ((void*)0)) {
  errno = EINVAL;
  return (-1);
 }

 *flagset_d = 0;

 return (0);
}
