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
typedef  int /*<<< orphan*/  svn_wc__db_t ;
typedef  scalar_t__ svn_node_kind_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_WC_BAD_PATH ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char const*,char*) ; 
 char* FUNC3 (char const*,int /*<<< orphan*/ *) ; 
 char* FUNC4 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char const**,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC8 (char const*,scalar_t__*,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_node_dir ; 
 int /*<<< orphan*/  FUNC9 (int*,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC10(svn_wc__db_t *db,
      const char **dir,
      const char *path,
      apr_pool_t *pool)
{
  svn_node_kind_t kind;
  int wc_format = 0;

  FUNC0(FUNC8(path, &kind, pool));
  if (kind == svn_node_dir)
    {
      const char *local_abspath;

      FUNC0(FUNC5(&local_abspath, path, pool));
      FUNC0(FUNC9(&wc_format, db, local_abspath,
                                        FALSE, pool));
    }

  /* a "version" of 0 means a non-wc directory */
  if (kind != svn_node_dir || wc_format == 0)
    {
      /* Passing a path ending in "." or ".." to svn_dirent_dirname() is
         probably always a bad idea; certainly it is in this case.
         Unfortunately, svn_dirent_dirname()'s current signature can't
         return an error, so we have to insert the protection in this
         caller, ideally the API needs a change.  See issue #1617. */
      const char *base_name = FUNC3(path, pool);
      if ((FUNC2(base_name, "..") == 0)
          || (FUNC2(base_name, ".") == 0))
        {
          return FUNC7
            (SVN_ERR_WC_BAD_PATH, NULL,
             FUNC1("Path '%s' ends in '%s', "
               "which is unsupported for this operation"),
             FUNC6(path, pool), base_name);
        }

      *dir = FUNC4(path, pool);
    }
  else
    *dir = path;

  return SVN_NO_ERROR;
}