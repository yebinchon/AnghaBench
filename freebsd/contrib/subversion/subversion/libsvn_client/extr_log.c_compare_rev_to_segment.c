
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ svn_revnum_t ;
struct TYPE_2__ {scalar_t__ range_start; scalar_t__ range_end; } ;
typedef TYPE_1__ svn_location_segment_t ;



__attribute__((used)) static int
compare_rev_to_segment(const void *key_p,
                       const void *element_p)
{
  svn_revnum_t rev =
    * (svn_revnum_t *)key_p;
  const svn_location_segment_t *segment =
    *((const svn_location_segment_t * const *) element_p);

  if (rev < segment->range_start)
    return -1;
  else if (rev > segment->range_end)
    return 1;
  else
    return 0;
}
