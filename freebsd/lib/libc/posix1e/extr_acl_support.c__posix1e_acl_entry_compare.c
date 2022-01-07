
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acl_entry {scalar_t__ ae_tag; scalar_t__ ae_id; } ;


 scalar_t__ ACL_BRAND_POSIX ;
 scalar_t__ ACL_GROUP ;
 scalar_t__ ACL_USER ;
 scalar_t__ _entry_brand (struct acl_entry*) ;
 int assert (int) ;

__attribute__((used)) static int
_posix1e_acl_entry_compare(struct acl_entry *a, struct acl_entry *b)
{

 assert(_entry_brand(a) == ACL_BRAND_POSIX);
 assert(_entry_brand(b) == ACL_BRAND_POSIX);





 if (a->ae_tag < b->ae_tag)
  return (-1);
 if (a->ae_tag > b->ae_tag)
  return (1);





 if (a->ae_tag == ACL_USER || a->ae_tag == ACL_GROUP) {
  if (a->ae_id < b->ae_id)
   return (-1);
  if (a->ae_id > b->ae_id)
   return (1);


 }






 return (0);
}
