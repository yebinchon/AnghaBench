
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_entry {int ae_set; } ;


 int AE_SET_BIRTHTIME ;
 int archive_entry_set_birthtime (struct archive_entry*,int ,int ) ;

void
archive_entry_unset_birthtime(struct archive_entry *entry)
{
 archive_entry_set_birthtime(entry, 0, 0);
 entry->ae_set &= ~AE_SET_BIRTHTIME;
}
