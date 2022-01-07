
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_entry {int ae_symlink_type; } ;



int
archive_entry_symlink_type(struct archive_entry *entry)
{
 return (entry->ae_symlink_type);
}
