
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_string_conv {int dummy; } ;
struct archive_entry {int ae_uname; } ;


 int archive_mstring_get_mbs_l (int *,char const**,size_t*,struct archive_string_conv*) ;

int
_archive_entry_uname_l(struct archive_entry *entry,
    const char **p, size_t *len, struct archive_string_conv *sc)
{
 return (archive_mstring_get_mbs_l(&entry->ae_uname, p, len, sc));
}
