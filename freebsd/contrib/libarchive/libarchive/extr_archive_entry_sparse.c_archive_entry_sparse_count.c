
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_entry {struct ae_sparse* sparse_head; } ;
struct ae_sparse {scalar_t__ offset; scalar_t__ length; struct ae_sparse* next; } ;


 scalar_t__ archive_entry_size (struct archive_entry*) ;
 int archive_entry_sparse_clear (struct archive_entry*) ;

int
archive_entry_sparse_count(struct archive_entry *entry)
{
 struct ae_sparse *sp;
 int count = 0;

 for (sp = entry->sparse_head; sp != ((void*)0); sp = sp->next)
  count++;






 if (count == 1) {
  sp = entry->sparse_head;
  if (sp->offset == 0 &&
      sp->length >= archive_entry_size(entry)) {
   count = 0;
   archive_entry_sparse_clear(entry);
  }
 }

 return (count);
}
