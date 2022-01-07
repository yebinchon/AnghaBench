
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_entry {int ae_sourcepath; } ;


 int archive_mstring_copy_mbs (int *,char const*) ;

void
archive_entry_copy_sourcepath(struct archive_entry *entry, const char *path)
{
 archive_mstring_copy_mbs(&entry->ae_sourcepath, path);
}
