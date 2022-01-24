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
struct TYPE_3__ {int /*<<< orphan*/  label; } ;
typedef  TYPE_1__ svn_client_conflict_option_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 char const* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

const char *
FUNC1(svn_client_conflict_option_t *option,
                                     apr_pool_t *result_pool)
{
  return FUNC0(result_pool, option->label);
}