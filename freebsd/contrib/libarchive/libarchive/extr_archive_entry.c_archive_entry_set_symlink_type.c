
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_entry {int ae_symlink_type; } ;



void
archive_entry_set_symlink_type(struct archive_entry *entry, int type)
{
 entry->ae_symlink_type = type;
}
