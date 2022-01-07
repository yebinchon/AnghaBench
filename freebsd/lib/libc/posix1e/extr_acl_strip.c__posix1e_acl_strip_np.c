
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int acl_tag_t ;
typedef int * acl_t ;
typedef int acl_entry_t ;


 scalar_t__ ACL_BRAND_POSIX ;
 int ACL_FIRST_ENTRY ;


 int ACL_MAX_ENTRIES ;
 int ACL_NEXT_ENTRY ;

 int ACL_UNDEFINED_TAG ;

 scalar_t__ _acl_brand (int *) ;
 scalar_t__ _entry_brand (int ) ;
 int acl_calc_mask (int **) ;
 int acl_copy_entry (int ,int ) ;
 int acl_create_entry (int **,int *) ;
 int * acl_dup (int * const) ;
 int acl_free (int *) ;
 int acl_get_entry (int *,int,int *) ;
 int acl_get_tag_type (int ,int*) ;
 int * acl_init (int ) ;
 int assert (int) ;

__attribute__((used)) static acl_t
_posix1e_acl_strip_np(const acl_t aclp, int recalculate_mask)
{
 acl_t acl_new, acl_old;
 acl_entry_t entry, entry_new;
 acl_tag_t tag;
 int entry_id, have_mask_entry;

 assert(_acl_brand(aclp) == ACL_BRAND_POSIX);

 acl_old = acl_dup(aclp);
 if (acl_old == ((void*)0))
  return (((void*)0));

 assert(_acl_brand(acl_old) == ACL_BRAND_POSIX);

 have_mask_entry = 0;
 acl_new = acl_init(ACL_MAX_ENTRIES);
 if (acl_new == ((void*)0)) {
  acl_free(acl_old);
  return (((void*)0));
 }
 tag = ACL_UNDEFINED_TAG;


 entry_id = ACL_FIRST_ENTRY;
 while (acl_get_entry(acl_old, entry_id, &entry) == 1) {
  entry_id = ACL_NEXT_ENTRY;

  assert(_entry_brand(entry) == ACL_BRAND_POSIX);

  if (acl_get_tag_type(entry, &tag) == -1)
   goto fail;

  switch(tag) {
  case 128:
  case 131:
  case 129:
   if (acl_create_entry(&acl_new, &entry_new) == -1)
    goto fail;
   if (acl_copy_entry(entry_new, entry) == -1)
    goto fail;
   assert(_entry_brand(entry_new) == ACL_BRAND_POSIX);
   break;
  case 130:
   have_mask_entry = 1;
   break;
  default:
   break;
  }
 }

 assert(_acl_brand(acl_new) == ACL_BRAND_POSIX);

 if (have_mask_entry && recalculate_mask) {
  if (acl_calc_mask(&acl_new) == -1)
   goto fail;
 }

 return (acl_new);

fail:
 acl_free(acl_new);
 acl_free(acl_old);

 return (((void*)0));
}
