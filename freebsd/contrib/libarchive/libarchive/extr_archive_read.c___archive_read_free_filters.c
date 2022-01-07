
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_read_filter {struct archive_read_filter* upstream; } ;
struct archive_read {struct archive_read_filter* filter; } ;


 int close_filters (struct archive_read*) ;
 int free (struct archive_read_filter*) ;

void
__archive_read_free_filters(struct archive_read *a)
{

 close_filters(a);

 while (a->filter != ((void*)0)) {
  struct archive_read_filter *t = a->filter->upstream;
  free(a->filter);
  a->filter = t;
 }
}
