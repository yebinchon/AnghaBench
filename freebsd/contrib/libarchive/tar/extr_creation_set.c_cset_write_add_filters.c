
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct creation_set {int filter_count; TYPE_1__* filters; } ;
struct archive {int dummy; } ;
struct TYPE_2__ {void* filter_name; scalar_t__ program; } ;


 int ARCHIVE_WARN ;
 int archive_write_add_filter_by_name (struct archive*,void*) ;
 int archive_write_add_filter_program (struct archive*,void*) ;

int
cset_write_add_filters(struct creation_set *cset, struct archive *a,
    const void **filter_name)
{
 int cnt = 0, i, r;

 for (i = 0; i < cset->filter_count; i++) {
  if (cset->filters[i].program)
   r = archive_write_add_filter_program(a,
    cset->filters[i].filter_name);
  else
   r = archive_write_add_filter_by_name(a,
    cset->filters[i].filter_name);
  if (r < ARCHIVE_WARN) {
   *filter_name = cset->filters[i].filter_name;
   return (r);
  }
  ++cnt;
 }
 return (cnt);
}
