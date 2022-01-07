
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_read_filter {struct archive_read_filter* upstream; } ;
struct archive_read {struct archive_read_filter* filter; } ;
struct archive {int dummy; } ;



__attribute__((used)) static struct archive_read_filter *
get_filter(struct archive *_a, int n)
{
 struct archive_read *a = (struct archive_read *)_a;
 struct archive_read_filter *f = a->filter;


 if (n == -1 && f != ((void*)0)) {
  struct archive_read_filter *last = f;
  f = f->upstream;
  while (f != ((void*)0)) {
   last = f;
   f = f->upstream;
  }
  return (last);
 }
 if (n < 0)
  return ((void*)0);
 while (n > 0 && f != ((void*)0)) {
  f = f->upstream;
  --n;
 }
 return (f);
}
