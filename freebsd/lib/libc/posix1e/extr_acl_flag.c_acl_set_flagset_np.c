
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int * acl_flagset_t ;
typedef TYPE_1__* acl_entry_t ;
struct TYPE_5__ {int ae_flags; } ;


 int ACL_BRAND_NFS4 ;
 int EINVAL ;
 int _entry_brand_as (TYPE_1__*,int ) ;
 int _entry_brand_may_be (TYPE_1__*,int ) ;
 scalar_t__ _flag_is_invalid (int ) ;
 int errno ;

int
acl_set_flagset_np(acl_entry_t entry_d, acl_flagset_t flagset_d)
{

 if (entry_d == ((void*)0)) {
  errno = EINVAL;
  return (-1);
 }

 if (!_entry_brand_may_be(entry_d, ACL_BRAND_NFS4)) {
  errno = EINVAL;
  return (-1);
 }

 _entry_brand_as(entry_d, ACL_BRAND_NFS4);

 if (_flag_is_invalid(*flagset_d))
  return (-1);

 entry_d->ae_flags = *flagset_d;

 return (0);
}
