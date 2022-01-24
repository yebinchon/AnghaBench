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
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_hash_index_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  SVN_WC_ENTRY_THIS_DIR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  WCPROPS_FNAME_FOR_DIR ; 
 int /*<<< orphan*/  WCPROPS_SUBDIR_FOR_FILES ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 char* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC8 (char const*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ **,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 char* FUNC14 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC15(apr_hash_t **all_wcprops,
                  const char *dir_abspath,
                  apr_pool_t *result_pool,
                  apr_pool_t *scratch_pool)
{
  const char *propfile_abspath;
  apr_hash_t *wcprops;
  apr_hash_t *dirents;
  const char *props_dir_abspath;
  apr_pool_t *iterpool = FUNC12(scratch_pool);
  apr_hash_index_t *hi;

  *all_wcprops = FUNC3(result_pool);

  /* First, look at dir-wcprops. */
  propfile_abspath = FUNC14(dir_abspath, WCPROPS_FNAME_FOR_DIR,
                                       scratch_pool);
  FUNC0(FUNC7(&wcprops, propfile_abspath, result_pool, iterpool));
  if (wcprops != NULL)
    FUNC9(*all_wcprops, SVN_WC_ENTRY_THIS_DIR, wcprops);

  props_dir_abspath = FUNC14(dir_abspath, WCPROPS_SUBDIR_FOR_FILES,
                                        scratch_pool);

  /* Now walk the wcprops directory. */
  FUNC0(FUNC10(&dirents, props_dir_abspath, TRUE,
                              scratch_pool, scratch_pool));

  for (hi = FUNC2(scratch_pool, dirents);
       hi;
       hi = FUNC4(hi))
    {
      const char *name = FUNC5(hi);

      FUNC11(iterpool);

      propfile_abspath = FUNC8(props_dir_abspath, name, iterpool);

      FUNC0(FUNC7(&wcprops, propfile_abspath,
                            result_pool, iterpool));
      FUNC1(wcprops != NULL);
      FUNC9(*all_wcprops, FUNC6(result_pool, name), wcprops);
    }

  FUNC13(iterpool);
  return SVN_NO_ERROR;
}