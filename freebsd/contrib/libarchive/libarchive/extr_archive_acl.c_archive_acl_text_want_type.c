
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_acl {int acl_types; } ;


 int ARCHIVE_ENTRY_ACL_TYPE_ACCESS ;
 int ARCHIVE_ENTRY_ACL_TYPE_DEFAULT ;
 int ARCHIVE_ENTRY_ACL_TYPE_NFS4 ;
 int ARCHIVE_ENTRY_ACL_TYPE_POSIX1E ;

__attribute__((used)) static int
archive_acl_text_want_type(struct archive_acl *acl, int flags)
{
 int want_type;


 if ((acl->acl_types & ARCHIVE_ENTRY_ACL_TYPE_NFS4) != 0) {

  if ((acl->acl_types & ARCHIVE_ENTRY_ACL_TYPE_POSIX1E) != 0)
   return (0);
  else
   return (ARCHIVE_ENTRY_ACL_TYPE_NFS4);
 }



 want_type = 0;
 if ((flags & ARCHIVE_ENTRY_ACL_TYPE_ACCESS) != 0)
  want_type |= ARCHIVE_ENTRY_ACL_TYPE_ACCESS;
 if ((flags & ARCHIVE_ENTRY_ACL_TYPE_DEFAULT) != 0)
  want_type |= ARCHIVE_ENTRY_ACL_TYPE_DEFAULT;


 if (want_type == 0)
  return (ARCHIVE_ENTRY_ACL_TYPE_POSIX1E);

 return (want_type);
}
