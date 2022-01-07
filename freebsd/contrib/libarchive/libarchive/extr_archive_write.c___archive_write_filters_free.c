
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_write_filter {int (* free ) (struct archive_write_filter*) ;struct archive_write_filter* next_filter; } ;
struct archive_write {int * filter_last; struct archive_write_filter* filter_first; } ;
struct archive {int dummy; } ;


 int ARCHIVE_OK ;
 int free (struct archive_write_filter*) ;
 int stub1 (struct archive_write_filter*) ;

void
__archive_write_filters_free(struct archive *_a)
{
 struct archive_write *a = (struct archive_write *)_a;
 int r = ARCHIVE_OK, r1;

 while (a->filter_first != ((void*)0)) {
  struct archive_write_filter *next
      = a->filter_first->next_filter;
  if (a->filter_first->free != ((void*)0)) {
   r1 = (*a->filter_first->free)(a->filter_first);
   if (r > r1)
    r = r1;
  }
  free(a->filter_first);
  a->filter_first = next;
 }
 a->filter_last = ((void*)0);
}
