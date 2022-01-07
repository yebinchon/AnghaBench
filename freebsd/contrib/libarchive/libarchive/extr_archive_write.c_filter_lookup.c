
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_write_filter {struct archive_write_filter* next_filter; } ;
struct archive_write {struct archive_write_filter* filter_last; struct archive_write_filter* filter_first; } ;
struct archive {int dummy; } ;



__attribute__((used)) static struct archive_write_filter *
filter_lookup(struct archive *_a, int n)
{
 struct archive_write *a = (struct archive_write *)_a;
 struct archive_write_filter *f = a->filter_first;
 if (n == -1)
  return a->filter_last;
 if (n < 0)
  return ((void*)0);
 while (n > 0 && f != ((void*)0)) {
  f = f->next_filter;
  --n;
 }
 return f;
}
