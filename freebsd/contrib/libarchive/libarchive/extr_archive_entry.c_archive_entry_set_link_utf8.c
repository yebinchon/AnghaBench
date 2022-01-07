
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_entry {int ae_set; int ae_hardlink; int ae_symlink; } ;


 int AE_SET_SYMLINK ;
 int archive_mstring_copy_utf8 (int *,char const*) ;

void
archive_entry_set_link_utf8(struct archive_entry *entry, const char *target)
{
 if (entry->ae_set & AE_SET_SYMLINK)
  archive_mstring_copy_utf8(&entry->ae_symlink, target);
 else
  archive_mstring_copy_utf8(&entry->ae_hardlink, target);
}
