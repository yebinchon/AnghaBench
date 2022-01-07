
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ range_start; } ;
typedef TYPE_1__ svn_location_segment_t ;



__attribute__((used)) static int
compare_segments(const void *a, const void *b)
{
  const svn_location_segment_t *a_seg
    = *((const svn_location_segment_t * const *) a);
  const svn_location_segment_t *b_seg
    = *((const svn_location_segment_t * const *) b);
  if (a_seg->range_start == b_seg->range_start)
    return 0;
  return (a_seg->range_start < b_seg->range_start) ? -1 : 1;
}
