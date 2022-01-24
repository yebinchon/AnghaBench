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
typedef  int /*<<< orphan*/  svn_sqlite__db_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_int64_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 int /*<<< orphan*/  PROPS_SUBDIR ; 
 int /*<<< orphan*/  PROP_BASE_FOR_DIR ; 
 int /*<<< orphan*/  PROP_BASE_SUBDIR ; 
 int /*<<< orphan*/  PROP_REVERT_FOR_DIR ; 
 int /*<<< orphan*/  PROP_WORKING_FOR_DIR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_VA_NULL ; 
 int /*<<< orphan*/  SVN_WC__BASE_EXT ; 
 int /*<<< orphan*/  SVN_WC__REVERT_EXT ; 
 int /*<<< orphan*/  SVN_WC__WORK_EXT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC3 (char const*,char const*,int /*<<< orphan*/ *) ; 
 char* FUNC4 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC5 (char const*,char const*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char const*,char const*,int /*<<< orphan*/ *) ; 
 char* FUNC8 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC10(const char *dir_abspath,
                   const char *new_wcroot_abspath,
                   const char *name,
                   svn_sqlite__db_t *sdb,
                   int original_format,
                   apr_int64_t wc_id,
                   apr_pool_t *scratch_pool)
{
  const char *base_abspath;  /* old name. nowadays: "pristine"  */
  const char *revert_abspath;  /* old name. nowadays: "BASE"  */
  const char *working_abspath;  /* old name. nowadays: "ACTUAL"  */
  apr_hash_t *base_props;
  apr_hash_t *revert_props;
  apr_hash_t *working_props;
  const char *old_wcroot_abspath
    = FUNC3(dir_abspath, new_wcroot_abspath,
                                      scratch_pool);
  const char *dir_relpath = FUNC5(old_wcroot_abspath,
                                                     dir_abspath);

  if (*name == '\0')
    {
      base_abspath = FUNC8(dir_abspath,
                                       PROP_BASE_FOR_DIR, scratch_pool);
      revert_abspath = FUNC8(dir_abspath,
                                         PROP_REVERT_FOR_DIR, scratch_pool);
      working_abspath = FUNC8(dir_abspath,
                                          PROP_WORKING_FOR_DIR, scratch_pool);
    }
  else
    {
      const char *basedir_abspath;
      const char *propsdir_abspath;

      propsdir_abspath = FUNC8(dir_abspath, PROPS_SUBDIR,
                                           scratch_pool);
      basedir_abspath = FUNC8(dir_abspath, PROP_BASE_SUBDIR,
                                          scratch_pool);

      base_abspath = FUNC4(basedir_abspath,
                                     FUNC1(scratch_pool,
                                                 name,
                                                 SVN_WC__BASE_EXT,
                                                 SVN_VA_NULL),
                                     scratch_pool);

      revert_abspath = FUNC4(basedir_abspath,
                                       FUNC1(scratch_pool,
                                                   name,
                                                   SVN_WC__REVERT_EXT,
                                                   SVN_VA_NULL),
                                       scratch_pool);

      working_abspath = FUNC4(propsdir_abspath,
                                        FUNC1(scratch_pool,
                                                    name,
                                                    SVN_WC__WORK_EXT,
                                                    SVN_VA_NULL),
                                        scratch_pool);
    }

  FUNC0(FUNC2(&base_props, base_abspath,
                        scratch_pool, scratch_pool));
  FUNC0(FUNC2(&revert_props, revert_abspath,
                        scratch_pool, scratch_pool));
  FUNC0(FUNC2(&working_props, working_abspath,
                        scratch_pool, scratch_pool));

  return FUNC6(FUNC9(
                            sdb, new_wcroot_abspath,
                            FUNC7(dir_relpath, name, scratch_pool),
                            base_props, revert_props, working_props,
                            original_format, wc_id,
                            scratch_pool));
}