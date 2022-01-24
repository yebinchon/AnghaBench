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
struct TYPE_3__ {int /*<<< orphan*/  abspath; } ;
typedef  TYPE_1__ svn_wc__db_wcroot_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  PRISTINE_TEMPDIR_RELPATH ; 
 int /*<<< orphan*/  SVN_VA_NULL ; 
 char* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static char *
FUNC2(svn_wc__db_wcroot_t *wcroot,
                     apr_pool_t *result_pool,
                     apr_pool_t *scratch_pool)
{
  return FUNC0(result_pool, wcroot->abspath,
                              FUNC1(scratch_pool),
                              PRISTINE_TEMPDIR_RELPATH, SVN_VA_NULL);
}