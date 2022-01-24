#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  svn_error_t ;
struct edit_baton {int /*<<< orphan*/  wcroot_abspath; int /*<<< orphan*/  pool; int /*<<< orphan*/  skipped_trees; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 

__attribute__((used)) static svn_error_t *
FUNC5(struct edit_baton *eb,
                      const char *local_abspath,
                      apr_pool_t *scratch_pool)
{
  FUNC0(FUNC2(local_abspath));

  FUNC4(eb->skipped_trees,
                FUNC1(eb->pool,
                            FUNC3(eb->wcroot_abspath,
                                                     local_abspath)),
                (void *)1);

  return SVN_NO_ERROR;
}