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
struct TYPE_6__ {scalar_t__ revprops; } ;
typedef  TYPE_1__ svn_repos_log_entry_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,TYPE_1__ const*,int) ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ *) ; 

svn_repos_log_entry_t *
FUNC2(const svn_repos_log_entry_t *log_entry,
                        apr_pool_t *result_pool)
{
  svn_repos_log_entry_t *new_entry = FUNC0(result_pool, log_entry,
                                                sizeof(*new_entry));

  if (log_entry->revprops)
    new_entry->revprops = FUNC1(log_entry->revprops, result_pool);

  return new_entry;
}