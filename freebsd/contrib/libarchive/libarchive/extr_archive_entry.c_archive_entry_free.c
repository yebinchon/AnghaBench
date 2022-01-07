
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_entry {int dummy; } ;


 int archive_entry_clear (struct archive_entry*) ;
 int free (struct archive_entry*) ;

void
archive_entry_free(struct archive_entry *entry)
{
 archive_entry_clear(entry);
 free(entry);
}
