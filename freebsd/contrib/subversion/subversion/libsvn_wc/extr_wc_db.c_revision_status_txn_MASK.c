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
typedef  int /*<<< orphan*/  svn_wc__db_wcroot_t ;
typedef  int /*<<< orphan*/  svn_wc__db_t ;
typedef  int /*<<< orphan*/  svn_revnum_t ;
struct TYPE_9__ {scalar_t__ apr_err; } ;
typedef  TYPE_1__ svn_error_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ SVN_ERR_WC_PATH_NOT_FOUND ; 
 TYPE_1__* SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 TYPE_1__* FUNC9 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC10 (TYPE_1__*) ; 

__attribute__((used)) static svn_error_t *
FUNC11(svn_revnum_t *min_revision,
                    svn_revnum_t *max_revision,
                    svn_boolean_t *is_sparse_checkout,
                    svn_boolean_t *is_modified,
                    svn_boolean_t *is_switched,
                    svn_wc__db_wcroot_t *wcroot,
                    const char *local_relpath,
                    svn_wc__db_t *db,
                    const char *trail_url,
                    svn_boolean_t committed,
                    apr_pool_t *scratch_pool)
{
  svn_error_t *err;
  svn_boolean_t exists;

  FUNC0(FUNC2(&exists, wcroot, local_relpath));

  if (!exists)
    {
      return FUNC9(SVN_ERR_WC_PATH_NOT_FOUND, NULL,
                               FUNC1("The node '%s' was not found."),
                               FUNC7(wcroot, local_relpath,
                                                      scratch_pool));
    }

  /* Determine mixed-revisionness. */
  FUNC0(FUNC3(min_revision, max_revision, wcroot,
                                local_relpath, committed, scratch_pool));

  /* Determine sparseness. */
  FUNC0(FUNC6(is_sparse_checkout, wcroot,
                                      local_relpath, scratch_pool));

  /* Check for switched nodes. */
  {
    err = FUNC5(is_switched, wcroot, local_relpath,
                                trail_url, scratch_pool);

    if (err)
      {
        if (err->apr_err != SVN_ERR_WC_PATH_NOT_FOUND)
          return FUNC10(err);

        FUNC8(err); /* No Base node, but no fatal error */
        *is_switched = FALSE;
      }
  }

  /* Check for db mods. */
  FUNC0(FUNC4(is_modified, wcroot, local_relpath, scratch_pool));

  return SVN_NO_ERROR;
}