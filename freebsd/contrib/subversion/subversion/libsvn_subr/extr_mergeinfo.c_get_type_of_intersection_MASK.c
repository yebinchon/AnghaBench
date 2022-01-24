#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ start; scalar_t__ end; } ;
typedef  TYPE_1__ svn_merge_range_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  intersection_type_t ;

/* Variables and functions */
 TYPE_1__ const* FUNC0 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__ const*) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  svn__adjoining_intersection ; 
 int /*<<< orphan*/  svn__equal_intersection ; 
 int /*<<< orphan*/  svn__no_intersection ; 
 int /*<<< orphan*/  svn__overlapping_intersection ; 
 int /*<<< orphan*/  svn__proper_subset_intersection ; 

__attribute__((used)) static svn_error_t *
FUNC2(const svn_merge_range_t *r1,
                         const svn_merge_range_t *r2,
                         intersection_type_t *intersection_type)
{
  FUNC1(r1);
  FUNC1(r2);
  FUNC1(FUNC0(r1));
  FUNC1(FUNC0(r2));

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