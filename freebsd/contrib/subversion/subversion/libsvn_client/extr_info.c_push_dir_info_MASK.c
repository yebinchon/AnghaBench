#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_ra_session_t ;
typedef  int /*<<< orphan*/  svn_lock_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_12__ {scalar_t__ kind; } ;
typedef  TYPE_1__ svn_dirent_t ;
typedef  int /*<<< orphan*/  svn_depth_t ;
typedef  int /*<<< orphan*/ * (* svn_client_info_receiver2_t ) (void*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;
typedef  int /*<<< orphan*/  svn_client_info2_t ;
struct TYPE_13__ {int /*<<< orphan*/  cancel_baton; int /*<<< orphan*/ * (* cancel_func ) (int /*<<< orphan*/ ) ;} ;
typedef  TYPE_2__ svn_client_ctx_t ;
struct TYPE_14__ {int /*<<< orphan*/  rev; } ;
typedef  TYPE_3__ svn_client__pathrev_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_hash_index_t ;

/* Variables and functions */
 int /*<<< orphan*/  DIRENT_FIELDS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ **,TYPE_1__*,int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 
 char* FUNC7 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC8 (TYPE_3__ const*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_depth_files ; 
 int /*<<< orphan*/  svn_depth_immediates ; 
 int /*<<< orphan*/  svn_depth_infinity ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,char const*) ; 
 scalar_t__ svn_node_dir ; 
 scalar_t__ svn_node_file ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC14 (char const*,char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC15(svn_ra_session_t *ra_session,
              const svn_client__pathrev_t *pathrev,
              const char *dir,
              svn_client_info_receiver2_t receiver,
              void *receiver_baton,
              svn_depth_t depth,
              svn_client_ctx_t *ctx,
              apr_hash_t *locks,
              apr_pool_t *pool)
{
  apr_hash_t *tmpdirents;
  apr_hash_index_t *hi;
  apr_pool_t *subpool = FUNC11(pool);

  FUNC0(FUNC13(ra_session, &tmpdirents, NULL, NULL,
                          dir, pathrev->rev, DIRENT_FIELDS, pool));

  for (hi = FUNC1(pool, tmpdirents); hi; hi = FUNC2(hi))
    {
      const char *path, *fs_path;
      svn_lock_t *lock;
      svn_client_info2_t *info;
      const char *name = FUNC3(hi);
      svn_dirent_t *the_ent = FUNC4(hi);
      svn_client__pathrev_t *child_pathrev;

      FUNC10(subpool);

      if (ctx->cancel_func)
        FUNC0(ctx->cancel_func(ctx->cancel_baton));

      path = FUNC14(dir, name, subpool);
      child_pathrev = FUNC8(pathrev, name, subpool);
      fs_path = FUNC7(child_pathrev, subpool);

      lock = FUNC9(locks, fs_path);

      FUNC0(FUNC5(&info, the_ent, lock, child_pathrev,
                                     subpool));

      if (depth >= svn_depth_immediates
          || (depth == svn_depth_files && the_ent->kind == svn_node_file))
        {
          FUNC0(receiver(receiver_baton, path, info, subpool));
        }

      if (depth == svn_depth_infinity && the_ent->kind == svn_node_dir)
        {
          FUNC0(FUNC15(ra_session, child_pathrev, path,
                                receiver, receiver_baton,
                                depth, ctx, locks, subpool));
        }
    }

  FUNC12(subpool);

  return SVN_NO_ERROR;
}