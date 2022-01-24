#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_wc__db_t ;
typedef  int /*<<< orphan*/  svn_wc__db_status_t ;
typedef  int /*<<< orphan*/  svn_node_kind_t ;
struct TYPE_7__ {scalar_t__ apr_err; } ;
typedef  TYPE_1__ svn_error_t ;
typedef  int /*<<< orphan*/  svn_depth_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ SVN_ERR_WC_PATH_NOT_FOUND ; 
 TYPE_1__* SVN_NO_ERROR ; 
 int /*<<< orphan*/  svn_depth_unknown ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  svn_node_unknown ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_wc__db_status_normal ; 

__attribute__((used)) static svn_error_t *
FUNC4(svn_wc__db_status_t *status,
                  svn_node_kind_t *kind,
                  svn_depth_t *depth,
                  svn_wc__db_t *db,
                  const char *local_abspath,
                  apr_pool_t *scratch_pool)
{
  svn_error_t *err;
  FUNC1(kind != NULL);

  err = FUNC3(status, kind, NULL, NULL, NULL, NULL,
                                 NULL, NULL, NULL, depth, NULL, NULL,
                                 NULL, NULL, NULL, NULL,
                                 db, local_abspath,
                                 scratch_pool, scratch_pool);

  if (err && err->apr_err == SVN_ERR_WC_PATH_NOT_FOUND)
    {
      FUNC2(err);

      *kind = svn_node_unknown;
      if (status)
        *status = svn_wc__db_status_normal;
      if (depth)
        *depth = svn_depth_unknown;

      return SVN_NO_ERROR;
    }
  else
    FUNC0(err);

  return SVN_NO_ERROR;
}