
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ start; scalar_t__ end; } ;
typedef TYPE_1__ svn_merge_range_t ;
typedef int svn_error_t ;
typedef int intersection_type_t ;


 TYPE_1__ const* IS_VALID_FORWARD_RANGE (TYPE_1__ const*) ;
 int SVN_ERR_ASSERT (TYPE_1__ const*) ;
 int * SVN_NO_ERROR ;
 int svn__adjoining_intersection ;
 int svn__equal_intersection ;
 int svn__no_intersection ;
 int svn__overlapping_intersection ;
 int svn__proper_subset_intersection ;

__attribute__((used)) static svn_error_t *
get_type_of_intersection(const svn_merge_range_t *r1,
                         const svn_merge_range_t *r2,
                         intersection_type_t *intersection_type)
{
  SVN_ERR_ASSERT(r1);
  SVN_ERR_ASSERT(r2);
  SVN_ERR_ASSERT(IS_VALID_FORWARD_RANGE(r1));
  SVN_ERR_ASSERT(IS_VALID_FORWARD_RANGE(r2));

  if (!(r1->start <= r2->end && r2->start <= r1->end))
    *intersection_type = svn__no_intersection;
  else if (r1->start == r2->start && r1->end == r2->end)
    *intersection_type = svn__equal_intersection;
  else if (r1->end == r2->start || r2->end == r1->start)
    *intersection_type = svn__adjoining_intersection;
  else if (r1->start <= r2->start && r1->end >= r2->end)
    *intersection_type = svn__proper_subset_intersection;
  else if (r2->start <= r1->start && r2->end >= r1->end)
    *intersection_type = svn__proper_subset_intersection;
  else
    *intersection_type = svn__overlapping_intersection;

  return SVN_NO_ERROR;
}
