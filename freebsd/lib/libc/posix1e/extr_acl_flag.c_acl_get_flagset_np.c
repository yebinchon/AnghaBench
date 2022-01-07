
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int * acl_flagset_t ;
typedef TYPE_1__* acl_entry_t ;
struct TYPE_4__ {int ae_flags; } ;


 int ACL_BRAND_NFS4 ;
 int EINVAL ;
 int _entry_brand_may_be (TYPE_1__*,int ) ;
 int errno ;

int
acl_get_flagset_np(acl_entry_t entry_d, acl_flagset_t *flagset_p)
{

 if (entry_d == ((void*)0) || flagset_p == ((void*)0)) {
  errno = EINVAL;
  return (-1);
 }

 if (!_entry_brand_may_be(entry_d, ACL_BRAND_NFS4)) {
  errno = EINVAL;
  return (-1);
 }

 *flagset_p = &entry_d->ae_flags;

 return (0);
}
