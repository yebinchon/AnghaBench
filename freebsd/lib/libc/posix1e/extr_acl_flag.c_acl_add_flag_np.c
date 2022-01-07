
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * acl_flagset_t ;
typedef int acl_flag_t ;


 int EINVAL ;
 scalar_t__ _flag_is_invalid (int ) ;
 int errno ;

int
acl_add_flag_np(acl_flagset_t flagset_d, acl_flag_t flag)
{

 if (flagset_d == ((void*)0)) {
  errno = EINVAL;
  return (-1);
 }

 if (_flag_is_invalid(flag))
  return (-1);

 *flagset_d |= flag;

 return (0);
}
