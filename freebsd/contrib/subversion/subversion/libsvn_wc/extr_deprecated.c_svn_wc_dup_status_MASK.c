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
struct TYPE_5__ {scalar_t__ entry; } ;
typedef  TYPE_1__ svn_wc_status_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ *) ; 

svn_wc_status_t *
FUNC2(const svn_wc_status_t *orig_stat,
                  apr_pool_t *pool)
{
  svn_wc_status_t *new_stat = FUNC0(pool, sizeof(*new_stat));

  /* Shallow copy all members. */
  *new_stat = *orig_stat;

  /* Now go back and dup the deep item into this pool. */
  if (orig_stat->entry)
    new_stat->entry = FUNC1(orig_stat->entry, pool);

  /* Return the new hotness. */
  return new_stat;
}