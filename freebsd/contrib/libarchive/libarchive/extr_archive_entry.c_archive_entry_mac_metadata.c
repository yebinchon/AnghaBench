
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_entry {size_t mac_metadata_size; void const* mac_metadata; } ;



const void *
archive_entry_mac_metadata(struct archive_entry *entry, size_t *s)
{
  *s = entry->mac_metadata_size;
  return entry->mac_metadata;
}
