
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_entry {struct ae_sparse* sparse_tail; struct ae_sparse* sparse_head; } ;
struct ae_sparse {scalar_t__ offset; scalar_t__ length; struct ae_sparse* next; } ;
typedef scalar_t__ la_int64_t ;


 scalar_t__ INT64_MAX ;
 scalar_t__ archive_entry_size (struct archive_entry*) ;
 scalar_t__ malloc (int) ;

void
archive_entry_sparse_add_entry(struct archive_entry *entry,
 la_int64_t offset, la_int64_t length)
{
 struct ae_sparse *sp;

 if (offset < 0 || length < 0)

  return;
 if (offset > INT64_MAX - length ||
     offset + length > archive_entry_size(entry))

  return;
 if ((sp = entry->sparse_tail) != ((void*)0)) {
  if (sp->offset + sp->length > offset)

   return;
  if (sp->offset + sp->length == offset) {
   if (sp->offset + sp->length + length < 0)


    return;

   sp->length += length;
   return;
  }
 }

 if ((sp = (struct ae_sparse *)malloc(sizeof(*sp))) == ((void*)0))

  return;

 sp->offset = offset;
 sp->length = length;
 sp->next = ((void*)0);

 if (entry->sparse_head == ((void*)0))
  entry->sparse_head = entry->sparse_tail = sp;
 else {

  if (entry->sparse_tail != ((void*)0))
   entry->sparse_tail->next = sp;
  entry->sparse_tail = sp;
 }
}
