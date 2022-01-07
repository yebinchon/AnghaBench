
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_string_conv {int dummy; } ;
struct archive_entry {int ae_gname; } ;


 int archive_mstring_copy_mbs_len_l (int *,char const*,size_t,struct archive_string_conv*) ;

int
_archive_entry_copy_gname_l(struct archive_entry *entry,
    const char *name, size_t len, struct archive_string_conv *sc)
{
 return (archive_mstring_copy_mbs_len_l(&entry->ae_gname, name, len, sc));
}
