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
typedef  int /*<<< orphan*/  svn_node_kind_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  scalar_t__ apr_status_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int apr_int32_t ;
typedef  int /*<<< orphan*/  apr_finfo_t ;

/* Variables and functions */
 int APR_FINFO_LINK ; 
 int APR_FINFO_MIN ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char const*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char const**,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  svn_node_none ; 

__attribute__((used)) static svn_error_t *
FUNC9(const char *path,
              svn_boolean_t resolve_symlinks,
              svn_boolean_t *is_special_p,
              svn_node_kind_t *kind,
              apr_pool_t *pool)
{
  apr_int32_t flags;
  apr_finfo_t finfo;
  apr_status_t apr_err;
  const char *path_apr;
  svn_boolean_t is_special = FALSE;

  if (path[0] == '\0')
    path = ".";

  /* Not using svn_io_stat() here because we want to check the
     apr_err return explicitly. */
  FUNC1(FUNC5(&path_apr, path, pool));

  flags = resolve_symlinks ? APR_FINFO_MIN : (APR_FINFO_MIN | APR_FINFO_LINK);
  apr_err = FUNC4(&finfo, path_apr, flags, pool);

  if (FUNC0(apr_err))
    *kind = svn_node_none;
  else if (FUNC2(apr_err))
    *kind = svn_node_none;
  else if (apr_err)
    return FUNC8(apr_err, FUNC3("Can't check path '%s'"),
                              FUNC7(path, pool));
  else
    FUNC6(kind, &is_special, &finfo);

  *is_special_p = is_special;

  return SVN_NO_ERROR;
}