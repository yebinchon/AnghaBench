
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_entry {int ae_set; } ;


 int AE_SET_SIZE ;

int
archive_entry_size_is_set(struct archive_entry *entry)
{
 return (entry->ae_set & AE_SET_SIZE);
}
