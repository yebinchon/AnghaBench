
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ ts_start; scalar_t__ ts_end; } ;
typedef TYPE_1__ trim_seg_t ;



__attribute__((used)) static int
trim_map_seg_compare(const void *x1, const void *x2)
{
 const trim_seg_t *s1 = x1;
 const trim_seg_t *s2 = x2;

 if (s1->ts_start < s2->ts_start) {
  if (s1->ts_end > s2->ts_start)
   return (0);
  return (-1);
 }
 if (s1->ts_start > s2->ts_start) {
  if (s1->ts_start < s2->ts_end)
   return (0);
  return (1);
 }
 return (0);
}
