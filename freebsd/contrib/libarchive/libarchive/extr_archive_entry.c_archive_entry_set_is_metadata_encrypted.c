
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_entry {int encryption; } ;


 int AE_ENCRYPTION_METADATA ;

void
archive_entry_set_is_metadata_encrypted(struct archive_entry *entry, char is_encrypted)
{
 if (is_encrypted) {
  entry->encryption |= AE_ENCRYPTION_METADATA;
 } else {
  entry->encryption &= ~AE_ENCRYPTION_METADATA;
 }
}
