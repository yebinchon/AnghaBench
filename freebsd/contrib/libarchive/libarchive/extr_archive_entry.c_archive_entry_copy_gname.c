
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_entry {int ae_gname; } ;


 int archive_mstring_copy_mbs (int *,char const*) ;

void
archive_entry_copy_gname(struct archive_entry *entry, const char *name)
{
 archive_mstring_copy_mbs(&entry->ae_gname, name);
}
