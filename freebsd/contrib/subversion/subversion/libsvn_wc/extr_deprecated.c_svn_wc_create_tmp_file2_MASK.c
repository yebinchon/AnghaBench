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
typedef  int /*<<< orphan*/  svn_wc_context_t ;
typedef  int /*<<< orphan*/  svn_io_file_del_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_file_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (char const**,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,char const**,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (char const**,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC9(apr_file_t **fp,
                        const char **new_name,
                        const char *path,
                        svn_io_file_del_t delete_when,
                        apr_pool_t *pool)
{
  svn_wc_context_t *wc_ctx;
  const char *local_abspath;
  const char *temp_dir;
  svn_error_t *err;

  FUNC1(fp || new_name);

  FUNC0(FUNC7(&wc_ctx, NULL /* config */, pool, pool));

  FUNC0(FUNC2(&local_abspath, path, pool));
  err = FUNC6(&temp_dir, wc_ctx, local_abspath, pool, pool);
  err = FUNC3(err, FUNC8(wc_ctx));
  if (err)
    return FUNC4(err);

  FUNC0(FUNC5(fp, new_name, temp_dir,
                                   delete_when, pool, pool));

  return SVN_NO_ERROR;
}