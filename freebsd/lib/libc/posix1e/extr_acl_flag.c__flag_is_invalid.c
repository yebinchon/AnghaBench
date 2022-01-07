
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int acl_flag_t ;


 int ACL_FLAGS_BITS ;
 int EINVAL ;
 int errno ;

__attribute__((used)) static int
_flag_is_invalid(acl_flag_t flag)
{

 if ((flag & ACL_FLAGS_BITS) == flag)
  return (0);

 errno = EINVAL;

 return (1);
}
