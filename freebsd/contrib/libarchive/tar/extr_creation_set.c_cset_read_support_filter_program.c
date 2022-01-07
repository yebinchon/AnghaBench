
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct creation_set {int filter_count; TYPE_1__* filters; } ;
struct archive {int dummy; } ;
struct TYPE_2__ {int filter_name; scalar_t__ program; } ;


 int archive_read_support_filter_program (struct archive*,int ) ;

int
cset_read_support_filter_program(struct creation_set *cset, struct archive *a)
{
 int cnt = 0, i;

 for (i = 0; i < cset->filter_count; i++) {
  if (cset->filters[i].program) {
   archive_read_support_filter_program(a,
       cset->filters[i].filter_name);
   ++cnt;
  }
 }
 return (cnt);
}
