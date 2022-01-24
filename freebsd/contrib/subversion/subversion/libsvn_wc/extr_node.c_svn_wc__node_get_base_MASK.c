#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  db; } ;
typedef  TYPE_1__ svn_wc_context_t ;
typedef  scalar_t__ svn_wc__db_status_t ;
struct TYPE_14__ {char* token; } ;
typedef  TYPE_2__ svn_wc__db_lock_t ;
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_node_kind_t ;
struct TYPE_15__ {scalar_t__ apr_err; } ;
typedef  TYPE_3__ svn_error_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ SVN_ERR_WC_PATH_NOT_FOUND ; 
 int /*<<< orphan*/  SVN_INVALID_REVNUM ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_3__* SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 TYPE_3__* FUNC5 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  svn_node_unknown ; 
 TYPE_3__* FUNC7 (scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const**,char const**,char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_wc__db_status_incomplete ; 
 scalar_t__ svn_wc__db_status_normal ; 

svn_error_t *
FUNC8(svn_node_kind_t *kind,
                      svn_revnum_t *revision,
                      const char **repos_relpath,
                      const char **repos_root_url,
                      const char **repos_uuid,
                      const char **lock_token,
                      svn_wc_context_t *wc_ctx,
                      const char *local_abspath,
                      svn_boolean_t ignore_enoent,
                      apr_pool_t *result_pool,
                      apr_pool_t *scratch_pool)
{
  svn_error_t *err;
  svn_wc__db_status_t status;
  svn_wc__db_lock_t *lock;
  svn_node_kind_t db_kind;

  err = FUNC7(&status, &db_kind, revision, repos_relpath,
                                 repos_root_url, repos_uuid, NULL,
                                 NULL, NULL, NULL, NULL, NULL,
                                 lock_token ? &lock : NULL,
                                 NULL, NULL, NULL,
                                 wc_ctx->db, local_abspath,
                                 result_pool, scratch_pool);

  if (err && err->apr_err != SVN_ERR_WC_PATH_NOT_FOUND)
    return FUNC6(err);
  else if (err
           || (status != svn_wc__db_status_normal
               && status != svn_wc__db_status_incomplete))
    {
      if (!ignore_enoent)
        {
          if (err)
            return FUNC6(err);
          else
            return FUNC5(SVN_ERR_WC_PATH_NOT_FOUND, NULL,
                                     FUNC2("The node '%s' was not found."),
                                     FUNC3(local_abspath,
                                                            scratch_pool));
        }
      FUNC4(err);

      if (kind)
        *kind = svn_node_unknown;
      if (revision)
        *revision = SVN_INVALID_REVNUM;
      if (repos_relpath)
        *repos_relpath = NULL;
      if (repos_root_url)
        *repos_root_url = NULL;
      if (repos_uuid)
        *repos_uuid = NULL;
      if (lock_token)
        *lock_token = NULL;
      return SVN_NO_ERROR;
    }

  if (kind)
    *kind = db_kind;
  if (lock_token)
    *lock_token = lock ? lock->token : NULL;

  FUNC0(!revision || FUNC1(*revision));
  FUNC0(!repos_relpath || *repos_relpath);
  FUNC0(!repos_root_url || *repos_root_url);
  FUNC0(!repos_uuid || *repos_uuid);
  return SVN_NO_ERROR;
}