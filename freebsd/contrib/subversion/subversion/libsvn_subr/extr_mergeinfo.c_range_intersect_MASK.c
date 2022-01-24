#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ start; scalar_t__ end; int /*<<< orphan*/  inheritable; } ;
typedef  TYPE_1__ svn_merge_range_t ;
typedef  int svn_boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static svn_boolean_t
FUNC2(const svn_merge_range_t *first, const svn_merge_range_t *second,
                svn_boolean_t consider_inheritance)
{
  FUNC1(FUNC0(first));
  FUNC1(FUNC0(second));

  return (first->start + 1 <= second->end)
    && (second->start + 1 <= first->end)
    && (!consider_inheritance
        || (!(first->inheritable) == !(second->inheritable)));
}