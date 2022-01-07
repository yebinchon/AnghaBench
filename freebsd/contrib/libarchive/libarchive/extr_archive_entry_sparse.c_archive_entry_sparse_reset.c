
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_entry {int sparse_head; int sparse_p; } ;


 int archive_entry_sparse_count (struct archive_entry*) ;

int
archive_entry_sparse_reset(struct archive_entry * entry)
{
 entry->sparse_p = entry->sparse_head;

 return archive_entry_sparse_count(entry);
}
