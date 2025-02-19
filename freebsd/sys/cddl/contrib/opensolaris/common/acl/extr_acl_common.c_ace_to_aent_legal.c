
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ a_type; int a_flags; int a_access_mask; } ;
typedef TYPE_1__ ace_t ;


 scalar_t__ ACE_ACCESS_ALLOWED_ACE_TYPE ;
 scalar_t__ ACE_ACCESS_DENIED_ACE_TYPE ;
 int ACE_APPEND_DATA ;
 int ACE_DELETE ;
 int ACE_FAILED_ACCESS_ACE_FLAG ;
 int ACE_NO_PROPAGATE_INHERIT_ACE ;
 int ACE_OWNER ;
 int ACE_READ_ACL ;
 int ACE_READ_ATTRIBUTES ;
 int ACE_READ_NAMED_ATTRS ;
 int ACE_SUCCESSFUL_ACCESS_ACE_FLAG ;
 int ACE_SYNCHRONIZE ;
 int ACE_VALID_FLAG_BITS ;
 int ACE_VALID_MASK_BITS ;
 int ACE_WRITE_ACL ;
 int ACE_WRITE_ATTRIBUTES ;
 int ACE_WRITE_DATA ;
 int ACE_WRITE_NAMED_ATTRS ;
 int ACE_WRITE_OWNER ;
 int EINVAL ;
 int ENOTSUP ;
 int access_mask_check (TYPE_1__*,int ,int) ;

__attribute__((used)) static int
ace_to_aent_legal(ace_t *acep)
{
 int error = 0;
 int isowner;


 if ((acep->a_type != ACE_ACCESS_ALLOWED_ACE_TYPE) &&
     (acep->a_type != ACE_ACCESS_DENIED_ACE_TYPE)) {
  error = ENOTSUP;
  goto out;
 }


 if (acep->a_flags & ~(ACE_VALID_FLAG_BITS)) {
  error = EINVAL;
  goto out;
 }


 if (acep->a_flags & (ACE_SUCCESSFUL_ACCESS_ACE_FLAG |
     ACE_FAILED_ACCESS_ACE_FLAG |
     ACE_NO_PROPAGATE_INHERIT_ACE)) {
  error = ENOTSUP;
  goto out;
 }


 if (acep->a_access_mask & ~(ACE_VALID_MASK_BITS)) {
  error = EINVAL;
  goto out;
 }

 if ((acep->a_flags & ACE_OWNER)) {
  isowner = 1;
 } else {
  isowner = 0;
 }

 error = access_mask_check(acep, ACE_SYNCHRONIZE, isowner);
 if (error)
  goto out;

 error = access_mask_check(acep, ACE_WRITE_OWNER, isowner);
 if (error)
  goto out;

 error = access_mask_check(acep, ACE_DELETE, isowner);
 if (error)
  goto out;

 error = access_mask_check(acep, ACE_WRITE_ATTRIBUTES, isowner);
 if (error)
  goto out;

 error = access_mask_check(acep, ACE_READ_NAMED_ATTRS, isowner);
 if (error)
  goto out;

 error = access_mask_check(acep, ACE_WRITE_NAMED_ATTRS, isowner);
 if (error)
  goto out;


 if (acep->a_type == ACE_ACCESS_ALLOWED_ACE_TYPE) {
  if (! (acep->a_access_mask & ACE_READ_ATTRIBUTES)) {
   error = ENOTSUP;
   goto out;
  }
  if ((acep->a_access_mask & ACE_WRITE_DATA) &&
      (! (acep->a_access_mask & ACE_APPEND_DATA))) {
   error = ENOTSUP;
   goto out;
  }
  if ((! (acep->a_access_mask & ACE_WRITE_DATA)) &&
      (acep->a_access_mask & ACE_APPEND_DATA)) {
   error = ENOTSUP;
   goto out;
  }
 }


 if ((acep->a_access_mask & ACE_READ_ACL) &&
     (acep->a_type != ACE_ACCESS_ALLOWED_ACE_TYPE)) {
  error = ENOTSUP;
  goto out;
 }
 if (acep->a_access_mask & ACE_WRITE_ACL) {
  if ((acep->a_type == ACE_ACCESS_DENIED_ACE_TYPE) &&
      (isowner)) {
   error = ENOTSUP;
   goto out;
  }
  if ((acep->a_type == ACE_ACCESS_ALLOWED_ACE_TYPE) &&
      (! isowner)) {
   error = ENOTSUP;
   goto out;
  }
 }

out:
 return (error);
}
