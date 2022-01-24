#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_wc__db_t ;
typedef  int svn_wc__db_status_t ;
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  scalar_t__ svn_node_kind_t ;
struct TYPE_9__ {scalar_t__ apr_err; } ;
typedef  TYPE_1__ svn_error_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ SVN_ERR_ENTRY_EXISTS ; 
 scalar_t__ SVN_ERR_ENTRY_FORBIDDEN ; 
 scalar_t__ SVN_ERR_UNSUPPORTED_FEATURE ; 
 scalar_t__ SVN_ERR_WC_FOUND_CONFLICT ; 
 scalar_t__ SVN_ERR_WC_PATH_NOT_FOUND ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* SVN_NO_ERROR ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (char const*,int /*<<< orphan*/ *) ; 
 int FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 TYPE_1__* FUNC8 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (char const*,scalar_t__*,scalar_t__*,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_node_none ; 
 scalar_t__ svn_node_unknown ; 
 int /*<<< orphan*/  FUNC11 (char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__*,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC14 (int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
#define  svn_wc__db_status_deleted 130 
#define  svn_wc__db_status_normal 129 
#define  svn_wc__db_status_not_present 128 
 scalar_t__ FUNC15 (char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC16(svn_node_kind_t *kind_p,
                   svn_boolean_t *db_row_exists_p,
                   svn_boolean_t *is_wc_root_p,
                   svn_wc__db_t *db,
                   const char *local_abspath,
                   const char *copyfrom_url,
                   svn_revnum_t copyfrom_rev,
                   apr_pool_t *scratch_pool)
{
  const char *base_name = FUNC4(local_abspath, scratch_pool);
  svn_boolean_t is_wc_root;
  svn_node_kind_t kind;
  svn_boolean_t is_special;

  FUNC1(FUNC5(local_abspath));
  FUNC1(!copyfrom_url || (FUNC12(copyfrom_url,
                                                        scratch_pool)
                                   && FUNC2(copyfrom_rev)));

  /* Check that the proposed node has an acceptable name. */
  if (FUNC15(base_name, scratch_pool))
    return FUNC8
      (SVN_ERR_ENTRY_FORBIDDEN, NULL,
       FUNC3("Can't create an entry with a reserved name while trying to add '%s'"),
       FUNC6(local_abspath, scratch_pool));

  FUNC0(FUNC11(local_abspath, scratch_pool));

  /* Make sure something's there; set KIND and *KIND_P. */
  FUNC0(FUNC10(local_abspath, &kind, &is_special,
                                    scratch_pool));
  if (kind == svn_node_none)
    return FUNC8(SVN_ERR_WC_PATH_NOT_FOUND, NULL,
                             FUNC3("'%s' not found"),
                             FUNC6(local_abspath,
                                                    scratch_pool));
  if (kind == svn_node_unknown)
    return FUNC8(SVN_ERR_UNSUPPORTED_FEATURE, NULL,
                             FUNC3("Unsupported node kind for path '%s'"),
                             FUNC6(local_abspath,
                                                    scratch_pool));
  if (kind_p)
    *kind_p = kind;

  /* Determine whether a DB row for this node EXISTS, and whether it
     IS_WC_ROOT.  If it exists, check that it is in an acceptable state for
     adding the new node; if not, return an error. */
  {
    svn_wc__db_status_t status;
    svn_boolean_t conflicted;
    svn_boolean_t exists;
    svn_error_t *err
      = FUNC14(&status, NULL, NULL, NULL, NULL, NULL, NULL,
                             NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                             NULL, NULL, NULL, NULL, NULL, NULL,
                             &conflicted,
                             NULL, NULL, NULL, NULL, NULL, NULL,
                             db, local_abspath,
                             scratch_pool, scratch_pool);

    if (err)
      {
        if (err->apr_err != SVN_ERR_WC_PATH_NOT_FOUND)
          return FUNC9(err);

        FUNC7(err);
        exists = FALSE;
        is_wc_root = FALSE;
      }
    else
      {
        is_wc_root = FALSE;
        exists = TRUE;

        /* Note that the node may be in conflict even if it does not
         * exist on disk (certain tree conflict scenarios). */
        if (conflicted)
          return FUNC8(SVN_ERR_WC_FOUND_CONFLICT, NULL,
                                   FUNC3("'%s' is an existing item in conflict; "
                                   "please mark the conflict as resolved "
                                   "before adding a new item here"),
                                   FUNC6(local_abspath,
                                                          scratch_pool));
        switch (status)
          {
            case svn_wc__db_status_not_present:
              break;
            case svn_wc__db_status_deleted:
              /* A working copy root should never have a WORKING_NODE */
              FUNC1(!is_wc_root);
              break;
            case svn_wc__db_status_normal:
              FUNC0(FUNC13(&is_wc_root, db, local_abspath,
                                           scratch_pool));

              if (is_wc_root && copyfrom_url)
                {
                  /* Integrate a sub working copy in a parent working copy
                     (legacy behavior) */
                  break;
                }
              else if (is_wc_root && is_special)
                {
                  /* Adding a symlink to a working copy root.
                     (special_tests.py 23: externals as symlink targets) */
                  break;
                }
              /* else: Fall through in default error */

            default:
              return FUNC8(
                               SVN_ERR_ENTRY_EXISTS, NULL,
                               FUNC3("'%s' is already under version control"),
                               FUNC6(local_abspath,
                                                      scratch_pool));
          }
      } /* err */

    if (db_row_exists_p)
      *db_row_exists_p = exists;
    if (is_wc_root_p)
      *is_wc_root_p = is_wc_root;
  }

  return SVN_NO_ERROR;
}