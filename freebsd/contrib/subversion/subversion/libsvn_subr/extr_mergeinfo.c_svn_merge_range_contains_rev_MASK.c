#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ svn_revnum_t ;
struct TYPE_3__ {scalar_t__ start; scalar_t__ end; } ;
typedef  TYPE_1__ svn_merge_range_t ;
typedef  int svn_boolean_t ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

svn_boolean_t
FUNC2(const svn_merge_range_t *range, svn_revnum_t rev)
{
  FUNC1(FUNC0(range->start));
  FUNC1(FUNC0(range->end));
  FUNC1(range->start != range->end);

  if (range->start < range->end)
    return rev > range->start && rev <= range->end;
  else
    return rev > range->end && rev <= range->start;
}