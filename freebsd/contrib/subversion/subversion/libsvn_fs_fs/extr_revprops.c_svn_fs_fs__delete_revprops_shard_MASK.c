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
typedef  int /*<<< orphan*/  (* svn_cancel_func_t ) (void*) ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  scalar_t__ apr_int64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 char* FUNC2 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/  (*) (void*),void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC8(const char *shard_path,
                                 apr_int64_t shard,
                                 int max_files_per_dir,
                                 svn_cancel_func_t cancel_func,
                                 void *cancel_baton,
                                 apr_pool_t *scratch_pool)
{
  if (shard == 0)
    {
      apr_pool_t *iterpool = FUNC6(scratch_pool);
      int i;

      /* delete all files except the one for revision 0 */
      for (i = 1; i < max_files_per_dir; ++i)
        {
          const char *path;
          FUNC5(iterpool);

          path = FUNC2(shard_path,
                                 FUNC1(iterpool, "%d", i),
                                 iterpool);
          if (cancel_func)
            FUNC0(cancel_func(cancel_baton));

          FUNC0(FUNC4(path, TRUE, iterpool));
        }

      FUNC7(iterpool);
    }
  else
    FUNC0(FUNC3(shard_path, TRUE,
                               cancel_func, cancel_baton, scratch_pool));

  return SVN_NO_ERROR;
}