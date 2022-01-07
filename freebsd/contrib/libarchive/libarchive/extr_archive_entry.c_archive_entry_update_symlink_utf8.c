
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_entry {int ae_symlink; int archive; int ae_set; } ;


 int AE_SET_SYMLINK ;
 scalar_t__ ENOMEM ;
 int __archive_errx (int,char*) ;
 scalar_t__ archive_mstring_update_utf8 (int ,int *,char const*) ;
 scalar_t__ errno ;

int
archive_entry_update_symlink_utf8(struct archive_entry *entry, const char *linkname)
{
 if (linkname != ((void*)0))
  entry->ae_set |= AE_SET_SYMLINK;
 else
  entry->ae_set &= ~AE_SET_SYMLINK;
 if (archive_mstring_update_utf8(entry->archive,
     &entry->ae_symlink, linkname) == 0)
  return (1);
 if (errno == ENOMEM)
  __archive_errx(1, "No memory");
 return (0);
}
