
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_write_filter {struct archive_write_filter* next_filter; struct archive* archive; } ;
struct archive_write {struct archive_write_filter* filter_last; struct archive_write_filter* filter_first; } ;
struct archive {int dummy; } ;


 struct archive_write_filter* calloc (int,int) ;

struct archive_write_filter *
__archive_write_allocate_filter(struct archive *_a)
{
 struct archive_write *a = (struct archive_write *)_a;
 struct archive_write_filter *f;

 f = calloc(1, sizeof(*f));
 f->archive = _a;
 if (a->filter_first == ((void*)0))
  a->filter_first = f;
 else
  a->filter_last->next_filter = f;
 a->filter_last = f;
 return f;
}
