#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_client_conflict_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_2__ {char* base_abspath; char* my_abspath; char* their_abspath; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ svn_wc_operation_merge ; 

svn_error_t *
FUNC4(const char **base_abspath,
                                      const char **working_abspath,
                                      const char **incoming_old_abspath,
                                      const char **incoming_new_abspath,
                                      svn_client_conflict_t *conflict,
                                      apr_pool_t *result_pool,
                                      apr_pool_t *scratch_pool)
{
  FUNC0(FUNC1(conflict, scratch_pool));

  if (base_abspath)
    {
      if (FUNC3(conflict) ==
          svn_wc_operation_merge)
        *base_abspath = NULL; /* ### WC base contents not available yet */
      else /* update/switch */
        *base_abspath = FUNC2(conflict)->base_abspath;
    }

  if (working_abspath)
    *working_abspath = FUNC2(conflict)->my_abspath;

  if (incoming_old_abspath)
    *incoming_old_abspath = FUNC2(conflict)->base_abspath;

  if (incoming_new_abspath)
    *incoming_new_abspath = FUNC2(conflict)->their_abspath;

  return SVN_NO_ERROR;
}