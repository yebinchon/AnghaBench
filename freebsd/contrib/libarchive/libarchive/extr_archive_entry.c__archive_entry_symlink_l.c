
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_string_conv {int dummy; } ;
struct archive_entry {int ae_set; int ae_symlink; } ;


 int AE_SET_SYMLINK ;
 int archive_mstring_get_mbs_l (int *,char const**,size_t*,struct archive_string_conv*) ;

int
_archive_entry_symlink_l(struct archive_entry *entry,
    const char **p, size_t *len, struct archive_string_conv *sc)
{
 if ((entry->ae_set & AE_SET_SYMLINK) == 0) {
  *p = ((void*)0);
  *len = 0;
  return (0);
 }
 return (archive_mstring_get_mbs_l( &entry->ae_symlink, p, len, sc));
}
