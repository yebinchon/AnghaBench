
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct sparse_block {scalar_t__ remaining; struct sparse_block* next; int is_hole; } ;
struct pax {scalar_t__ entry_bytes_remaining; scalar_t__ entry_padding; struct sparse_block* sparse_list; } ;
struct archive_write {scalar_t__ format_data; } ;


 int __archive_write_nulls (struct archive_write*,size_t) ;
 int free (struct sparse_block*) ;

__attribute__((used)) static int
archive_write_pax_finish_entry(struct archive_write *a)
{
 struct pax *pax;
 uint64_t remaining;
 int ret;

 pax = (struct pax *)a->format_data;
 remaining = pax->entry_bytes_remaining;
 if (remaining == 0) {
  while (pax->sparse_list) {
   struct sparse_block *sb;
   if (!pax->sparse_list->is_hole)
    remaining += pax->sparse_list->remaining;
   sb = pax->sparse_list->next;
   free(pax->sparse_list);
   pax->sparse_list = sb;
  }
 }
 ret = __archive_write_nulls(a, (size_t)(remaining + pax->entry_padding));
 pax->entry_bytes_remaining = pax->entry_padding = 0;
 return (ret);
}
