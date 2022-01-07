
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
struct archive_entry {int ae_set; int ae_hardlink; int ae_symlink; } ;


 int AE_SET_SYMLINK ;
 int archive_mstring_copy_wcs (int *,int const*) ;

void
archive_entry_copy_link_w(struct archive_entry *entry, const wchar_t *target)
{
 if (entry->ae_set & AE_SET_SYMLINK)
  archive_mstring_copy_wcs(&entry->ae_symlink, target);
 else
  archive_mstring_copy_wcs(&entry->ae_hardlink, target);
}
