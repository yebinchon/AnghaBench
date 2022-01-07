
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_string_conv {int dummy; } ;
struct archive_entry {int ae_set; int ae_symlink; } ;


 int AE_SET_SYMLINK ;
 int archive_mstring_copy_mbs_len_l (int *,char const*,size_t,struct archive_string_conv*) ;

int
_archive_entry_copy_symlink_l(struct archive_entry *entry,
    const char *linkname, size_t len, struct archive_string_conv *sc)
{
 int r;

 r = archive_mstring_copy_mbs_len_l(&entry->ae_symlink,
     linkname, len, sc);
 if (linkname != ((void*)0) && r == 0)
  entry->ae_set |= AE_SET_SYMLINK;
 else
  entry->ae_set &= ~AE_SET_SYMLINK;
 return (r);
}
