
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* acl_entry_t ;
struct TYPE_7__ {int ae_flags; int ae_entry_type; int ae_perm; int ae_id; int ae_tag; } ;


 int EINVAL ;
 int _entry_brand (TYPE_1__*) ;
 int _entry_brand_as (TYPE_1__*,int ) ;
 int _entry_brand_may_be (TYPE_1__*,int ) ;
 int errno ;

int
acl_copy_entry(acl_entry_t dest_d, acl_entry_t src_d)
{

 if (src_d == ((void*)0) || dest_d == ((void*)0) || src_d == dest_d) {
  errno = EINVAL;
  return (-1);
 }




 if (!_entry_brand_may_be(dest_d, _entry_brand(src_d))) {
  errno = EINVAL;
  return (-1);
 }

 _entry_brand_as(dest_d, _entry_brand(src_d));

 dest_d->ae_tag = src_d->ae_tag;
 dest_d->ae_id = src_d->ae_id;
 dest_d->ae_perm = src_d->ae_perm;
 dest_d->ae_entry_type = src_d->ae_entry_type;
 dest_d->ae_flags = src_d->ae_flags;

 return (0);
}
