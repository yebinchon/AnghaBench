
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_entry {int ae_set; int ae_symlink; } ;


 int AE_SET_SYMLINK ;
 int archive_mstring_copy_mbs (int *,char const*) ;

void
archive_entry_set_symlink(struct archive_entry *entry, const char *linkname)
{
 archive_mstring_copy_mbs(&entry->ae_symlink, linkname);
 if (linkname != ((void*)0))
  entry->ae_set |= AE_SET_SYMLINK;
 else
  entry->ae_set &= ~AE_SET_SYMLINK;
}
