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
typedef  int /*<<< orphan*/  svn_rangelist_t ;
typedef  int /*<<< orphan*/  svn_merge_range_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC2 (char const**,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (char const*) ; 

svn_error_t *
FUNC4(svn_rangelist_t **rangelist,
                     const char *str,
                     apr_pool_t *result_pool)
{
  const char *s = str;

  *rangelist = FUNC1(result_pool, 1, sizeof(svn_merge_range_t *));
  FUNC0(FUNC2(&s, s + FUNC3(s), *rangelist, result_pool));
  return SVN_NO_ERROR;
}