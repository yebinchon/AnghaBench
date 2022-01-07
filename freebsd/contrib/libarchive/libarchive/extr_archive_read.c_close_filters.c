
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_read_filter {int closed; int (* close ) (struct archive_read_filter*) ;int * buffer; struct archive_read_filter* upstream; } ;
struct archive_read {struct archive_read_filter* filter; } ;


 int ARCHIVE_OK ;
 int free (int *) ;
 int stub1 (struct archive_read_filter*) ;

__attribute__((used)) static int
close_filters(struct archive_read *a)
{
 struct archive_read_filter *f = a->filter;
 int r = ARCHIVE_OK;

 while (f != ((void*)0)) {
  struct archive_read_filter *t = f->upstream;
  if (!f->closed && f->close != ((void*)0)) {
   int r1 = (f->close)(f);
   f->closed = 1;
   if (r1 < r)
    r = r1;
  }
  free(f->buffer);
  f->buffer = ((void*)0);
  f = t;
 }
 return r;
}
