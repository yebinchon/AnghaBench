#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  wc_id; int /*<<< orphan*/  sdb; } ;
typedef  TYPE_1__ svn_wc__db_wcroot_t ;
typedef  int /*<<< orphan*/  svn_sqlite__stmt_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  scalar_t__ apr_size_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_int64_t ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  STMT_HAS_SWITCHED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 scalar_t__ TRUE ; 
 scalar_t__ FUNC1 (char const*,char const*) ; 
 scalar_t__ FUNC2 (char const*) ; 
 char* FUNC3 (char const*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char const**,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC10(svn_boolean_t *is_switched,
                      svn_wc__db_wcroot_t *wcroot,
                      const char *local_relpath,
                      const char *trail_url,
                      apr_pool_t *scratch_pool)
{
  svn_sqlite__stmt_t *stmt;
  svn_boolean_t have_row;
  apr_int64_t repos_id;
  const char *repos_relpath;

  /* Optional argument handling for caller */
  if (!is_switched)
    return SVN_NO_ERROR;

  *is_switched = FALSE;

  FUNC0(FUNC8(NULL, NULL, NULL,
                                            &repos_relpath, &repos_id,
                                            NULL, NULL, NULL, NULL, NULL,
                                            NULL, NULL, NULL, NULL, NULL,
                                            wcroot, local_relpath,
                                            scratch_pool, scratch_pool));

  /* First do the cheap check where we only need info on the origin itself */
  if (trail_url != NULL)
    {
      const char *repos_root_url;
      const char *url;
      apr_size_t len1, len2;

      /* If the trailing part of the URL of the working copy directory
         does not match the given trailing URL then the whole working
         copy is switched. */

      FUNC0(FUNC9(&repos_root_url, NULL, wcroot,
                                          repos_id, scratch_pool));
      url = FUNC3(repos_root_url, repos_relpath,
                                        scratch_pool);

      len1 = FUNC2(trail_url);
      len2 = FUNC2(url);
      if ((len1 > len2) || FUNC1(url + len2 - len1, trail_url))
        {
          *is_switched = TRUE;
          return SVN_NO_ERROR;
        }
    }

  FUNC0(FUNC5(&stmt, wcroot->sdb, STMT_HAS_SWITCHED));
  FUNC0(FUNC4(stmt, "iss", wcroot->wc_id, local_relpath, repos_relpath));
  FUNC0(FUNC7(&have_row, stmt));
  if (have_row)
    *is_switched = TRUE;
  FUNC0(FUNC6(stmt));

  return SVN_NO_ERROR;
}