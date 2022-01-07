
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_entry {size_t mac_metadata_size; int * mac_metadata; } ;


 int abort () ;
 int free (int *) ;
 int * malloc (size_t) ;
 int memcpy (int *,void const*,size_t) ;

void
archive_entry_copy_mac_metadata(struct archive_entry *entry,
    const void *p, size_t s)
{
  free(entry->mac_metadata);
  if (p == ((void*)0) || s == 0) {
    entry->mac_metadata = ((void*)0);
    entry->mac_metadata_size = 0;
  } else {
    entry->mac_metadata_size = s;
    entry->mac_metadata = malloc(s);
    if (entry->mac_metadata == ((void*)0))
      abort();
    memcpy(entry->mac_metadata, p, s);
  }
}
