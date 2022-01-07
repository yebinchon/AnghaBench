
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct acl {int acl_cnt; TYPE_1__* acl_entry; } ;
typedef TYPE_2__* acl_t ;
struct TYPE_11__ {struct acl ats_acl; } ;
struct TYPE_10__ {int ae_tag; int ae_perm; int ae_id; } ;


 int ACL_BRAND_POSIX ;



 int ACL_MAX_ENTRIES ;
 int ACL_PERM_BITS ;
 int ACL_UNDEFINED_ID ;

 int EINVAL ;
 int ENOMEM ;
 int _acl_brand_as (TYPE_2__*,int ) ;
 int _acl_brand_may_be (TYPE_2__*,int ) ;
 TYPE_2__* acl_dup (TYPE_2__*) ;
 int acl_free (TYPE_2__*) ;
 int acl_valid (TYPE_2__*) ;
 int errno ;

int
acl_calc_mask(acl_t *acl_p)
{
 struct acl *acl_int, *acl_int_new;
 acl_t acl_new;
 int i, mask_mode, mask_num;
 if (acl_p == ((void*)0) || *acl_p == ((void*)0)) {
  errno = EINVAL;
  return (-1);
 }

 if (!_acl_brand_may_be(*acl_p, ACL_BRAND_POSIX)) {
  errno = EINVAL;
  return (-1);
 }
 _acl_brand_as(*acl_p, ACL_BRAND_POSIX);

 acl_int = &(*acl_p)->ats_acl;
 if ((acl_int->acl_cnt < 3) || (acl_int->acl_cnt > ACL_MAX_ENTRIES)) {
  errno = EINVAL;
  return (-1);
 }

 acl_new = acl_dup(*acl_p);
 if (acl_new == ((void*)0))
  return (-1);
 acl_int_new = &acl_new->ats_acl;

 mask_mode = 0;
 mask_num = -1;


 for (i = 0; i < acl_int_new->acl_cnt; i++) {
  switch(acl_int_new->acl_entry[i].ae_tag) {
  case 128:
  case 131:
  case 130:
   mask_mode |=
       acl_int_new->acl_entry[i].ae_perm & ACL_PERM_BITS;
   break;
  case 129:
   mask_num = i;
   break;
  }
 }


 if (mask_num != -1)
  acl_int_new->acl_entry[mask_num].ae_perm = mask_mode;
 else {

  if (acl_int_new->acl_cnt == ACL_MAX_ENTRIES) {
   errno = ENOMEM;
   acl_free(acl_new);
   return (-1);
  }

  acl_int_new->acl_entry[acl_int_new->acl_cnt].ae_tag = 129;
  acl_int_new->acl_entry[acl_int_new->acl_cnt].ae_id =
      ACL_UNDEFINED_ID;
  acl_int_new->acl_entry[acl_int_new->acl_cnt].ae_perm =
      mask_mode;
  acl_int_new->acl_cnt++;
 }

 if (acl_valid(acl_new) == -1) {
  errno = EINVAL;
  acl_free(acl_new);
  return (-1);
 }

 **acl_p = *acl_new;
 acl_free(acl_new);

 return (0);
}
