#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_wc__db_t ;
typedef  int svn_wc__db_status_t ;
typedef  scalar_t__ svn_node_kind_t ;
struct TYPE_12__ {scalar_t__ apr_err; } ;
typedef  TYPE_1__ svn_error_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  APR_ENOENT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ SVN_ERR_WC_MISSING ; 
 scalar_t__ SVN_ERR_WC_PATH_NOT_FOUND ; 
 scalar_t__ SVN_ERR_WC_UNSUPPORTED_FORMAT ; 
 scalar_t__ SVN_ERR_WC_UPGRADE_REQUIRED ; 
 TYPE_1__* SVN_NO_ERROR ; 
 int SVN_WC__WC_NG_VERSION ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC5 (TYPE_1__*) ; 
 TYPE_1__* FUNC6 (char const*,scalar_t__*,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_node_dir ; 
 scalar_t__ svn_node_none ; 
 TYPE_1__* FUNC7 (int*,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
#define  svn_wc__db_status_excluded 130 
#define  svn_wc__db_status_not_present 129 
#define  svn_wc__db_status_server_excluded 128 
 TYPE_1__* FUNC8 (int*,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC9(int *wc_format,
                          svn_wc__db_t *db,
                          const char *local_abspath,
                          svn_boolean_t check_path,
                          apr_pool_t *scratch_pool)
{
  svn_error_t *err;

  err = FUNC8(wc_format, db, local_abspath, scratch_pool);
  if (err)
    {
      svn_node_kind_t kind;

      if (err->apr_err != SVN_ERR_WC_MISSING &&
          err->apr_err != SVN_ERR_WC_UNSUPPORTED_FORMAT &&
          err->apr_err != SVN_ERR_WC_UPGRADE_REQUIRED)
        return FUNC5(err);
      FUNC3(err);

      /* ### the stuff below seems to be redundant. get_format() probably
         ### does all this.
         ###
         ### investigate all callers. DEFINITELY keep in mind the
         ### svn_wc_check_wc() entrypoint.
      */

      /* If the format file does not exist or path not directory, then for
         our purposes this is not a working copy, so return 0. */
      *wc_format = 0;

      /* Check path itself exists. */
      FUNC0(FUNC6(local_abspath, &kind, scratch_pool));
      if (kind == svn_node_none)
        {
          return FUNC4(APR_ENOENT, NULL, FUNC1("'%s' does not exist"),
                                   FUNC2(local_abspath,
                                                          scratch_pool));
        }
    }

  if (*wc_format >= SVN_WC__WC_NG_VERSION)
    {
      svn_wc__db_status_t db_status;
      svn_node_kind_t db_kind;

      if (check_path)
        {
          /* If a node is not a directory, it is not a working copy
             directory.  This allows creating new working copies as
             a path below an existing working copy. */
          svn_node_kind_t wc_kind;

          FUNC0(FUNC6(local_abspath, &wc_kind, scratch_pool));
          if (wc_kind != svn_node_dir)
            {
              *wc_format = 0; /* Not a directory, so not a wc-directory */
              return SVN_NO_ERROR;
            }
        }

      err = FUNC7(&db_status, &db_kind, NULL, NULL, NULL,
                                 NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                 NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                 NULL, NULL, NULL, NULL, NULL,
                                 NULL, NULL, NULL,
                                 db, local_abspath,
                                 scratch_pool, scratch_pool);

      if (err && err->apr_err == SVN_ERR_WC_PATH_NOT_FOUND)
        {
          FUNC3(err);
          *wc_format = 0;
          return SVN_NO_ERROR;
        }
      else
        FUNC0(err);

      if (db_kind != svn_node_dir)
        {
          /* The WC thinks there must be a file, so this is not
             a wc-directory */
          *wc_format = 0;
          return SVN_NO_ERROR;
        }

      switch (db_status)
        {
          case svn_wc__db_status_not_present:
          case svn_wc__db_status_server_excluded:
          case svn_wc__db_status_excluded:
            /* If there is a directory here, it is not related to the parent
               working copy: Obstruction */
            *wc_format = 0;
            return SVN_NO_ERROR;
          default:
            break;
        }
    }

  return SVN_NO_ERROR;
}