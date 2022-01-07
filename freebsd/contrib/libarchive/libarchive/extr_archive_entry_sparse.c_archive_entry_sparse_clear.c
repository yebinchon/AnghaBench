
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_entry {int * sparse_tail; struct ae_sparse* sparse_head; } ;
struct ae_sparse {struct ae_sparse* next; } ;


 int free (struct ae_sparse*) ;

void
archive_entry_sparse_clear(struct archive_entry *entry)
{
 struct ae_sparse *sp;

 while (entry->sparse_head != ((void*)0)) {
  sp = entry->sparse_head->next;
  free(entry->sparse_head);
  entry->sparse_head = sp;
 }
 entry->sparse_tail = ((void*)0);
}
