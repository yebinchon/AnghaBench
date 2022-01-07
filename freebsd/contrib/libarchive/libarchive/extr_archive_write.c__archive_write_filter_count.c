
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_write_filter {struct archive_write_filter* next_filter; } ;
struct archive_write {struct archive_write_filter* filter_first; } ;
struct archive {int dummy; } ;



__attribute__((used)) static int
_archive_write_filter_count(struct archive *_a)
{
 struct archive_write *a = (struct archive_write *)_a;
 struct archive_write_filter *p = a->filter_first;
 int count = 0;
 while(p) {
  count++;
  p = p->next_filter;
 }
 return count;
}
