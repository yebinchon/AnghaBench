
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_entry {int encryption; } ;


 int AE_ENCRYPTION_METADATA ;

int
archive_entry_is_metadata_encrypted(struct archive_entry *entry)
{
 return ((entry->encryption & AE_ENCRYPTION_METADATA) == AE_ENCRYPTION_METADATA);
}
