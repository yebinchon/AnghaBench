
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int acl_perm_t ;


 int ACL_NFS4_PERM_BITS ;
 int ACL_POSIX1E_BITS ;
 int EINVAL ;
 int errno ;

__attribute__((used)) static int
_perm_is_invalid(acl_perm_t perm)
{


 if ((perm & -perm) == perm &&
     (perm & (ACL_POSIX1E_BITS | ACL_NFS4_PERM_BITS)) == perm)
  return (0);

 errno = EINVAL;

 return (1);
}
