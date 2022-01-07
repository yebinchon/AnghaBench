
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int* acl_permset_t ;
typedef TYPE_1__* acl_entry_t ;
struct TYPE_5__ {int ae_perm; } ;


 int ACL_BRAND_NFS4 ;
 int ACL_NFS4_PERM_BITS ;
 int ACL_POSIX1E_BITS ;
 int EINVAL ;
 int _entry_brand_as (TYPE_1__*,int ) ;
 int _entry_brand_may_be (TYPE_1__*,int ) ;
 int errno ;

int
acl_set_permset(acl_entry_t entry_d, acl_permset_t permset_d)
{

 if (!entry_d) {
  errno = EINVAL;
  return (-1);
 }

 if ((*permset_d & ACL_POSIX1E_BITS) != *permset_d) {
  if ((*permset_d & ACL_NFS4_PERM_BITS) != *permset_d) {
   errno = EINVAL;
   return (-1);
  }
  if (!_entry_brand_may_be(entry_d, ACL_BRAND_NFS4)) {
   errno = EINVAL;
   return (-1);
  }
  _entry_brand_as(entry_d, ACL_BRAND_NFS4);
 }

 entry_d->ae_perm = *permset_d;

 return (0);
}
