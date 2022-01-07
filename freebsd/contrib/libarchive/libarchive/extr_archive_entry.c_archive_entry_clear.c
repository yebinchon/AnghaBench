
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_entry {int ae_symlink_type; int stat; int acl; int ae_uname; int ae_symlink; int ae_sourcepath; int ae_pathname; int ae_hardlink; int ae_gname; int ae_fflags_text; } ;


 int AE_SYMLINK_TYPE_UNDEFINED ;
 int archive_acl_clear (int *) ;
 int archive_entry_copy_mac_metadata (struct archive_entry*,int *,int ) ;
 int archive_entry_sparse_clear (struct archive_entry*) ;
 int archive_entry_xattr_clear (struct archive_entry*) ;
 int archive_mstring_clean (int *) ;
 int free (int ) ;
 int memset (struct archive_entry*,int ,int) ;

struct archive_entry *
archive_entry_clear(struct archive_entry *entry)
{
 if (entry == ((void*)0))
  return (((void*)0));
 archive_mstring_clean(&entry->ae_fflags_text);
 archive_mstring_clean(&entry->ae_gname);
 archive_mstring_clean(&entry->ae_hardlink);
 archive_mstring_clean(&entry->ae_pathname);
 archive_mstring_clean(&entry->ae_sourcepath);
 archive_mstring_clean(&entry->ae_symlink);
 archive_mstring_clean(&entry->ae_uname);
 archive_entry_copy_mac_metadata(entry, ((void*)0), 0);
 archive_acl_clear(&entry->acl);
 archive_entry_xattr_clear(entry);
 archive_entry_sparse_clear(entry);
 free(entry->stat);
 entry->ae_symlink_type = AE_SYMLINK_TYPE_UNDEFINED;
 memset(entry, 0, sizeof(*entry));
 return entry;
}
