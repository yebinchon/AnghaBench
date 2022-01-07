
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sparse_block {size_t remaining; scalar_t__ is_hole; struct sparse_block* next; } ;
struct TYPE_3__ {unsigned char const* s; } ;
struct pax {struct sparse_block* sparse_list; TYPE_1__ sparse_map; int sparse_map_padding; } ;
struct archive_write {scalar_t__ format_data; } ;
typedef int ssize_t ;


 int ARCHIVE_OK ;
 int __archive_write_nulls (struct archive_write*,int ) ;
 int __archive_write_output (struct archive_write*,unsigned char const*,size_t) ;
 int archive_string_empty (TYPE_1__*) ;
 size_t archive_strlen (TYPE_1__*) ;
 int free (struct sparse_block*) ;

__attribute__((used)) static ssize_t
archive_write_pax_data(struct archive_write *a, const void *buff, size_t s)
{
 struct pax *pax;
 size_t ws;
 size_t total;
 int ret;

 pax = (struct pax *)a->format_data;





 if (archive_strlen(&(pax->sparse_map))) {
  ret = __archive_write_output(a, pax->sparse_map.s,
      archive_strlen(&(pax->sparse_map)));
  if (ret != ARCHIVE_OK)
   return (ret);
  ret = __archive_write_nulls(a, pax->sparse_map_padding);
  if (ret != ARCHIVE_OK)
   return (ret);
  archive_string_empty(&(pax->sparse_map));
 }

 total = 0;
 while (total < s) {
  const unsigned char *p;

  while (pax->sparse_list != ((void*)0) &&
      pax->sparse_list->remaining == 0) {
   struct sparse_block *sb = pax->sparse_list->next;
   free(pax->sparse_list);
   pax->sparse_list = sb;
  }

  if (pax->sparse_list == ((void*)0))
   return (total);

  p = ((const unsigned char *)buff) + total;
  ws = s - total;
  if (ws > pax->sparse_list->remaining)
   ws = (size_t)pax->sparse_list->remaining;

  if (pax->sparse_list->is_hole) {


   pax->sparse_list->remaining -= ws;
   total += ws;
   continue;
  }

  ret = __archive_write_output(a, p, ws);
  pax->sparse_list->remaining -= ws;
  total += ws;
  if (ret != ARCHIVE_OK)
   return (ret);
 }
 return (total);
}
