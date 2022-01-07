
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_read_filter {struct archive_read_filter* upstream; } ;
struct archive_read {struct archive_read_filter* filter; } ;
struct archive {int dummy; } ;



__attribute__((used)) static int
_archive_filter_count(struct archive *_a)
{
 struct archive_read *a = (struct archive_read *)_a;
 struct archive_read_filter *p = a->filter;
 int count = 0;
 while(p) {
  count++;
  p = p->upstream;
 }
 return count;
}
