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
typedef  scalar_t__ svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_13__ {int /*<<< orphan*/  notify_baton2; int /*<<< orphan*/  (* notify_func2 ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;int /*<<< orphan*/  wc_ctx; } ;
typedef  TYPE_1__ svn_client_ctx_t ;
struct TYPE_14__ {int /*<<< orphan*/  resolution_tree; struct conflict_tree_incoming_add_details* tree_conflict_incoming_details; } ;
typedef  TYPE_2__ svn_client_conflict_t ;
struct TYPE_15__ {int /*<<< orphan*/  id; } ;
typedef  TYPE_3__ svn_client_conflict_option_t ;
struct conflict_tree_incoming_add_details {char const* repos_relpath; scalar_t__ added_rev; scalar_t__ deleted_rev; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SVN_ERR_WC_CONFLICT_RESOLVER_FAILURE ; 
 scalar_t__ SVN_INVALID_REVNUM ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,char const*,scalar_t__,char const*,scalar_t__,char const*,int,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (char const**,scalar_t__*,int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (char const**,scalar_t__*,int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC8 (char const**,int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC13 (char const*,int /*<<< orphan*/ *) ; 
 char* FUNC14 (char const*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC15 (char const**,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC16 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_wc_notify_resolved_tree ; 

__attribute__((used)) static svn_error_t *
FUNC19(svn_client_conflict_option_t *option,
                                       svn_client_conflict_t *conflict,
                                       svn_client_ctx_t *ctx,
                                       apr_pool_t *scratch_pool)
{
  const char *repos_root_url;
  const char *incoming_old_repos_relpath;
  svn_revnum_t incoming_old_pegrev;
  const char *incoming_new_repos_relpath;
  svn_revnum_t incoming_new_pegrev;
  const char *local_abspath;
  const char *lock_abspath;
  struct conflict_tree_incoming_add_details *details;
  const char *added_repos_relpath;
  const char *source1;
  svn_revnum_t rev1;
  const char *source2;
  svn_revnum_t rev2;
  svn_error_t *err;

  local_abspath = FUNC7(conflict);

  details = conflict->tree_conflict_incoming_details;
  if (details == NULL)
    return FUNC12(SVN_ERR_WC_CONFLICT_RESOLVER_FAILURE, NULL,
                             FUNC1("Conflict resolution option '%d' requires "
                               "details for tree conflict at '%s' to be "
                               "fetched from the repository"),
                            option->id,
                            FUNC10(local_abspath,
                                                   scratch_pool));

  /* Set up merge sources to merge the entire incoming added directory tree. */
  FUNC0(FUNC8(&repos_root_url, NULL,
                                             conflict, scratch_pool,
                                             scratch_pool));
  source1 = FUNC14(repos_root_url,
                                        details->repos_relpath,
                                        scratch_pool);
  FUNC0(FUNC6(
            &incoming_old_repos_relpath, &incoming_old_pegrev,
            NULL, conflict, scratch_pool, scratch_pool));
  FUNC0(FUNC5(
            &incoming_new_repos_relpath, &incoming_new_pegrev,
            NULL, conflict, scratch_pool, scratch_pool));
  if (incoming_old_pegrev < incoming_new_pegrev) /* forward merge */
    {
      if (details->added_rev == SVN_INVALID_REVNUM)
        return FUNC12(SVN_ERR_WC_CONFLICT_RESOLVER_FAILURE, NULL,
                                 FUNC1("Could not determine when '%s' was "
                                   "added the repository"),
                                 FUNC10(local_abspath,
                                                        scratch_pool));
      rev1 = FUNC3(details->added_rev);
      source2 = FUNC14(repos_root_url,
                                            incoming_new_repos_relpath,
                                            scratch_pool);
      rev2 = incoming_new_pegrev;
      added_repos_relpath = incoming_new_repos_relpath;
    }
  else /* reverse-merge */
    {
      if (details->deleted_rev == SVN_INVALID_REVNUM)
        return FUNC12(SVN_ERR_WC_CONFLICT_RESOLVER_FAILURE, NULL,
                                 FUNC1("Could not determine when '%s' was "
                                   "deleted from the repository"),
                                 FUNC10(local_abspath,
                                                        scratch_pool));
      rev1 = details->deleted_rev;
      source2 = FUNC14(repos_root_url,
                                            incoming_old_repos_relpath,
                                            scratch_pool);
      rev2 = incoming_old_pegrev;
      added_repos_relpath = incoming_new_repos_relpath;
    }

  /* ### The following WC modifications should be atomic. */
  FUNC0(FUNC15(&lock_abspath, ctx->wc_ctx,
                                                 local_abspath,
                                                 scratch_pool, scratch_pool));

  /* ### wrap in a transaction */
  err = FUNC2(added_repos_relpath,
                              source1, rev1, source2, rev2,
                              local_abspath,
                              (incoming_old_pegrev > incoming_new_pegrev),
                              ctx, scratch_pool, scratch_pool);
  if (!err)
    err = FUNC16(ctx->wc_ctx, local_abspath, scratch_pool);

  err = FUNC11(err, FUNC17(ctx->wc_ctx,
                                                                 lock_abspath,
                                                                 scratch_pool));
  FUNC13(local_abspath, scratch_pool);
  FUNC0(err);

  if (ctx->notify_func2)
    ctx->notify_func2(ctx->notify_baton2,
                      FUNC18(local_abspath,
                                           svn_wc_notify_resolved_tree,
                                           scratch_pool),
                      scratch_pool);

  conflict->resolution_tree = FUNC9(option);

  return SVN_NO_ERROR;
}