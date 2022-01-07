
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARCHIVE_ENTRY_ACL_STYLE_EXTRA_ID ;
 int ARCHIVE_ENTRY_ACL_STYLE_MARK_DEFAULT ;
 int ARCHIVE_ENTRY_ACL_STYLE_SEPARATOR_COMMA ;
 int ARCHIVE_ENTRY_ACL_TYPE_POSIX1E ;
 int OLD_ARCHIVE_ENTRY_ACL_STYLE_EXTRA_ID ;
 int OLD_ARCHIVE_ENTRY_ACL_STYLE_MARK_DEFAULT ;

__attribute__((used)) static int
archive_entry_acl_text_compat(int *flags)
{
 if ((*flags & ARCHIVE_ENTRY_ACL_TYPE_POSIX1E) == 0)
  return (1);


 if ((*flags & OLD_ARCHIVE_ENTRY_ACL_STYLE_EXTRA_ID) != 0)
  *flags |= ARCHIVE_ENTRY_ACL_STYLE_EXTRA_ID;


 if ((*flags & OLD_ARCHIVE_ENTRY_ACL_STYLE_MARK_DEFAULT) != 0)
  *flags |= ARCHIVE_ENTRY_ACL_STYLE_MARK_DEFAULT;

 *flags |= ARCHIVE_ENTRY_ACL_STYLE_SEPARATOR_COMMA;

 return (0);
}
