
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_acl {int acl_head; int acl_p; scalar_t__ acl_state; } ;


 int ARCHIVE_ENTRY_ACL_TYPE_ACCESS ;
 scalar_t__ ARCHIVE_ENTRY_ACL_USER_OBJ ;
 int archive_acl_count (struct archive_acl*,int) ;

int
archive_acl_reset(struct archive_acl *acl, int want_type)
{
 int count, cutoff;

 count = archive_acl_count(acl, want_type);






 if ((want_type & ARCHIVE_ENTRY_ACL_TYPE_ACCESS) != 0)
  cutoff = 3;
 else
  cutoff = 0;

 if (count > cutoff)
  acl->acl_state = ARCHIVE_ENTRY_ACL_USER_OBJ;
 else
  acl->acl_state = 0;
 acl->acl_p = acl->acl_head;
 return (count);
}
