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
typedef  int /*<<< orphan*/ * svn_mergeinfo_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC4(svn_mergeinfo_t *deleted, svn_mergeinfo_t *added,
                    svn_mergeinfo_t from, svn_mergeinfo_t to,
                    svn_boolean_t consider_inheritance,
                    apr_pool_t *result_pool,
                    apr_pool_t *scratch_pool)
{
  if (from && to == NULL)
    {
      *deleted = FUNC2(from, result_pool);
      *added = FUNC1(result_pool);
    }
  else if (from == NULL && to)
    {
      *deleted = FUNC1(result_pool);
      *added = FUNC2(to, result_pool);
    }
  else
    {
      *deleted = FUNC1(result_pool);
      *added = FUNC1(result_pool);

      if (from && to)
        {
          FUNC0(FUNC3(from, to, *deleted, *added,
                                               consider_inheritance,
                                               result_pool, scratch_pool));
        }
    }

  return SVN_NO_ERROR;
}