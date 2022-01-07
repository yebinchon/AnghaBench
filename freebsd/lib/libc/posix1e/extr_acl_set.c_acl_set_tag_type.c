
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int acl_tag_t ;
typedef TYPE_1__* acl_entry_t ;
struct TYPE_5__ {int ae_tag; } ;


 int ACL_BRAND_NFS4 ;
 int ACL_BRAND_POSIX ;







 int EINVAL ;
 int _entry_brand_as (TYPE_1__*,int ) ;
 int _entry_brand_may_be (TYPE_1__*,int ) ;
 int errno ;

int
acl_set_tag_type(acl_entry_t entry_d, acl_tag_t tag_type)
{

 if (entry_d == ((void*)0)) {
  errno = EINVAL;
  return (-1);
 }

 switch(tag_type) {
 case 130:
 case 131:
  if (!_entry_brand_may_be(entry_d, ACL_BRAND_POSIX)) {
   errno = EINVAL;
   return (-1);
  }
  _entry_brand_as(entry_d, ACL_BRAND_POSIX);
  break;
 case 134:
  if (!_entry_brand_may_be(entry_d, ACL_BRAND_NFS4)) {
   errno = EINVAL;
   return (-1);
  }
  _entry_brand_as(entry_d, ACL_BRAND_NFS4);
  break;
 }

 switch(tag_type) {
 case 128:
 case 129:
 case 132:
 case 133:
 case 131:
 case 130:
 case 134:
  entry_d->ae_tag = tag_type;
  return (0);
 }

 errno = EINVAL;
 return (-1);
}
