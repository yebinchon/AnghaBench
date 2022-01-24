#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/ * err; } ;
typedef  TYPE_1__ svn_wc_notify_t ;
typedef  scalar_t__ svn_node_kind_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_9__ {int /*<<< orphan*/  notify_baton2; int /*<<< orphan*/  (* notify_func2 ) (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ;int /*<<< orphan*/  wc_ctx; int /*<<< orphan*/  cancel_baton; int /*<<< orphan*/  cancel_func; } ;
typedef  TYPE_2__ svn_client_ctx_t ;
struct repos_info_baton {int /*<<< orphan*/ * last_uuid; int /*<<< orphan*/ * last_repos; TYPE_2__* ctx; int /*<<< orphan*/ * state_pool; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_hash_index_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_ILLEGAL_TARGET ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 char* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  fetch_repos_info ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char const**,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ svn_node_dir ; 
 scalar_t__ FUNC10 (char const*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC16 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_wc_notify_failed_external ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,struct repos_info_baton*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  (*) (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *),int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_2__*,char const*,struct repos_info_baton*,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC19(const char *path,
                   svn_client_ctx_t *ctx,
                   apr_pool_t *scratch_pool)
{
  const char *local_abspath;
  apr_hash_t *externals;
  struct repos_info_baton info_baton;

  info_baton.state_pool = scratch_pool;
  info_baton.ctx = ctx;
  info_baton.last_repos = NULL;
  info_baton.last_uuid = NULL;

  if (FUNC10(path))
    return FUNC9(SVN_ERR_ILLEGAL_TARGET, NULL,
                             FUNC1("'%s' is not a local path"), path);

  FUNC0(FUNC7(&local_abspath, path, scratch_pool));
  FUNC0(FUNC17(ctx->wc_ctx, local_abspath,
                         fetch_repos_info, &info_baton,
                         ctx->cancel_func, ctx->cancel_baton,
                         ctx->notify_func2, ctx->notify_baton2,
                         scratch_pool));

  FUNC0(FUNC14(&externals,
                                          ctx->wc_ctx, local_abspath,
                                          scratch_pool, scratch_pool));

  if (FUNC2(externals) > 0)
    {
      apr_pool_t *iterpool = FUNC12(scratch_pool);
      apr_hash_index_t *hi;

      /* We are upgrading from >= 1.7. No need to upgrade from
         svn:externals properties. And by that avoiding the removal
         of recorded externals information (issue #4519)

         Only directory externals need an explicit upgrade */
      for (hi = FUNC3(scratch_pool, externals);
           hi;
           hi = FUNC4(hi))
        {
          const char *ext_abspath;
          svn_node_kind_t kind;

          FUNC11(iterpool);

          ext_abspath = FUNC5(hi);

          FUNC0(FUNC15(&kind, NULL, NULL, NULL, NULL,
                                             ctx->wc_ctx, local_abspath,
                                             ext_abspath, FALSE,
                                             iterpool, iterpool));

          if (kind == svn_node_dir)
            {
              svn_error_t *err = FUNC19(ext_abspath, ctx, iterpool);

              if (err)
                {
                  svn_wc_notify_t *notify =
                            FUNC16(ext_abspath,
                                                 svn_wc_notify_failed_external,
                                                 iterpool);
                  notify->err = err;
                  ctx->notify_func2(ctx->notify_baton2,
                                    notify, iterpool);
                  FUNC8(err);
                  /* Next external node, please... */
                }
            }
        }

      FUNC13(iterpool);
    }
  else
    {
      /* Upgrading from <= 1.6, or no svn:properties defined.
         (There is no way to detect the difference from libsvn_client :( ) */

      FUNC0(FUNC18(ctx, local_abspath,
                                                &info_baton, scratch_pool));
    }
  return SVN_NO_ERROR;
}