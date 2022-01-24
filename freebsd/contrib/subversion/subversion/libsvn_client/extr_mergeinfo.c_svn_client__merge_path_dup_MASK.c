#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {void* implicit_mergeinfo; void* pre_merge_mergeinfo; scalar_t__ remaining_ranges; int /*<<< orphan*/  abspath; } ;
typedef  TYPE_1__ svn_client__merge_path_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,TYPE_1__ const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC2 (void*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (scalar_t__,int /*<<< orphan*/ *) ; 

svn_client__merge_path_t *
FUNC4(const svn_client__merge_path_t *old,
                           apr_pool_t *pool)
{
  svn_client__merge_path_t *new = FUNC0(pool, old, sizeof(*old));

  new->abspath = FUNC1(pool, old->abspath);
  if (new->remaining_ranges)
    new->remaining_ranges = FUNC3(old->remaining_ranges, pool);
  if (new->pre_merge_mergeinfo)
    new->pre_merge_mergeinfo = FUNC2(old->pre_merge_mergeinfo,
                                                 pool);
  if (new->implicit_mergeinfo)
    new->implicit_mergeinfo = FUNC2(old->implicit_mergeinfo,
                                                pool);

  return new;
}