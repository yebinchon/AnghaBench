
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_entry {int ae_pathname; } ;


 int archive_mstring_copy_utf8 (int *,char const*) ;

void
archive_entry_set_pathname_utf8(struct archive_entry *entry, const char *name)
{
 archive_mstring_copy_utf8(&entry->ae_pathname, name);
}
