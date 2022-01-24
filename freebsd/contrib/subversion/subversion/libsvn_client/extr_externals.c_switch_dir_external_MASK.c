#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_44__   TYPE_4__ ;
typedef  struct TYPE_43__   TYPE_3__ ;
typedef  struct TYPE_42__   TYPE_2__ ;
typedef  struct TYPE_41__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_ra_session_t ;
struct TYPE_41__ {int /*<<< orphan*/  number; } ;
struct TYPE_42__ {scalar_t__ kind; TYPE_1__ value; } ;
typedef  TYPE_2__ svn_opt_revision_t ;
typedef  scalar_t__ svn_node_kind_t ;
struct TYPE_43__ {scalar_t__ apr_err; } ;
typedef  TYPE_3__ svn_error_t ;
struct TYPE_44__ {int /*<<< orphan*/  wc_ctx; int /*<<< orphan*/  notify_baton2; int /*<<< orphan*/  notify_func2; int /*<<< orphan*/  cancel_baton; int /*<<< orphan*/  cancel_func; } ;
typedef  TYPE_4__ svn_client_ctx_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ SVN_ERR_CLIENT_INVALID_RELOCATION ; 
 scalar_t__ SVN_ERR_WC_INVALID_RELOCATION ; 
 scalar_t__ SVN_ERR_WC_NOT_WORKING_COPY ; 
 scalar_t__ SVN_ERR_WC_PATH_NOT_FOUND ; 
 int /*<<< orphan*/  SVN_ERR_WC_PATH_UNEXPECTED_STATUS ; 
 int /*<<< orphan*/  SVN_INVALID_REVNUM ; 
 TYPE_3__* SVN_NO_ERROR ; 
 int /*<<< orphan*/  SVN_PROP_EXTERNALS ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 TYPE_3__* FUNC3 (int /*<<< orphan*/ ,char const*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (char const*,char const*) ; 
 TYPE_3__* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,char const*,TYPE_2__ const*,TYPE_2__ const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC6 (int /*<<< orphan*/ *,char const*,char const*,TYPE_2__ const*,TYPE_2__ const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,TYPE_2__ const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC8 (char const**,int /*<<< orphan*/ *,char const*,TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC9 (char const*,char const*,char const*,int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_depth_infinity ; 
 int /*<<< orphan*/  svn_depth_unknown ; 
 char* FUNC10 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (char const*) ; 
 int /*<<< orphan*/  FUNC12 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*) ; 
 TYPE_3__* FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC15 (TYPE_3__*) ; 
 TYPE_3__* FUNC16 (char const*,scalar_t__*,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC17 (char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_node_dir ; 
 scalar_t__ svn_node_unknown ; 
 scalar_t__ svn_opt_revision_number ; 
 int /*<<< orphan*/ * FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC21 (char const*,char const*,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC22 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC23 (int /*<<< orphan*/ ,char const*,char const*,scalar_t__,char const*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC24 (int /*<<< orphan*/ ,char const*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC25 (char const**,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC26 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC27 (scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const**,char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC28 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const**,char const**,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC29 (char const**,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC30(const char *local_abspath,
                    const char *url,
                    const char *url_from_externals_definition,
                    const svn_opt_revision_t *peg_revision,
                    const svn_opt_revision_t *revision,
                    const char *defining_abspath,
                    svn_boolean_t *timestamp_sleep,
                    svn_ra_session_t *ra_session,
                    svn_client_ctx_t *ctx,
                    apr_pool_t *pool)
{
  svn_node_kind_t kind;
  svn_error_t *err;
  svn_revnum_t external_peg_rev = SVN_INVALID_REVNUM;
  svn_revnum_t external_rev = SVN_INVALID_REVNUM;
  apr_pool_t *subpool = FUNC18(pool);
  const char *repos_root_url;
  const char *repos_uuid;

  FUNC1(FUNC11(local_abspath));

  if (peg_revision->kind == svn_opt_revision_number)
    external_peg_rev = peg_revision->value.number;

  if (revision->kind == svn_opt_revision_number)
    external_rev = revision->value.number;

  /*
   * The code below assumes existing versioned paths are *not* part of
   * the external's defining working copy.
   * The working copy library does not support registering externals
   * on top of existing BASE nodes and will error out if we try.
   * So if the external target is part of the defining working copy's
   * BASE tree, don't attempt to create the external. Doing so would
   * leave behind a switched path instead of an external (since the
   * switch succeeds but registration of the external in the DB fails).
   * The working copy then cannot be updated until the path is switched back.
   * See issue #4085.
   */
  FUNC0(FUNC27(&kind, NULL, NULL,
                                &repos_root_url, &repos_uuid,
                                NULL, ctx->wc_ctx, local_abspath,
                                TRUE, /* ignore_enoent */
                                pool, pool));
  if (kind != svn_node_unknown)
    {
      const char *wcroot_abspath;
      const char *defining_wcroot_abspath;

      FUNC0(FUNC25(&wcroot_abspath, ctx->wc_ctx,
                                 local_abspath, pool, pool));
      FUNC0(FUNC25(&defining_wcroot_abspath, ctx->wc_ctx,
                                 defining_abspath, pool, pool));
      if (FUNC4(wcroot_abspath, defining_wcroot_abspath) == 0)
        return FUNC14(SVN_ERR_WC_PATH_UNEXPECTED_STATUS, NULL,
                                 FUNC2("The external '%s' defined in %s at '%s' "
                                   "cannot be checked out because '%s' is "
                                   "already a versioned path."),
                                   url_from_externals_definition,
                                   SVN_PROP_EXTERNALS,
                                   FUNC12(defining_abspath,
                                                          pool),
                                   FUNC12(local_abspath,
                                                          pool));
    }

  /* If path is a directory, try to update/switch to the correct URL
     and revision. */
  FUNC0(FUNC16(local_abspath, &kind, pool));
  if (kind == svn_node_dir)
    {
      const char *node_url;

      /* Doubles as an "is versioned" check. */
      err = FUNC29(&node_url, ctx->wc_ctx, local_abspath,
                                 pool, subpool);
      if (err && err->apr_err == SVN_ERR_WC_PATH_NOT_FOUND)
        {
          FUNC13(err);
          err = SVN_NO_ERROR;
          goto relegate;
        }
      else if (err)
        return FUNC15(err);

      if (node_url)
        {
          svn_boolean_t is_wcroot;

          FUNC0(FUNC26(&is_wcroot, ctx->wc_ctx, local_abspath,
                                    pool));

          if (! is_wcroot)
          {
            /* This can't be a directory external! */

            err = FUNC24(ctx->wc_ctx, defining_abspath,
                                          local_abspath,
                                          TRUE /* declaration_only */,
                                          ctx->cancel_func, ctx->cancel_baton,
                                          pool);

            if (err && err->apr_err == SVN_ERR_WC_PATH_NOT_FOUND)
              {
                /* New external... No problem that we can't remove it */
                FUNC13(err);
                err = NULL;
              }
            else if (err)
              return FUNC15(err);

            return FUNC14(SVN_ERR_WC_PATH_UNEXPECTED_STATUS, NULL,
                                     FUNC2("The external '%s' defined in %s at '%s' "
                                       "cannot be checked out because '%s' is "
                                       "already a versioned path."),
                                     url_from_externals_definition,
                                     SVN_PROP_EXTERNALS,
                                     FUNC12(defining_abspath,
                                                            pool),
                                     FUNC12(local_abspath,
                                                            pool));
          }

          /* If we have what appears to be a version controlled
             subdir, and its top-level URL matches that of our
             externals definition, perform an update. */
          if (FUNC4(node_url, url) == 0)
            {
              FUNC0(FUNC7(NULL, timestamp_sleep,
                                                  local_abspath,
                                                  revision, svn_depth_unknown,
                                                  FALSE, FALSE, FALSE, TRUE,
                                                  FALSE, TRUE,
                                                  ra_session, ctx, subpool));

              /* We just decided that this existing directory is an external,
                 so update the external registry with this information, like
                 when checking out an external */
              FUNC0(FUNC23(ctx->wc_ctx,
                                    defining_abspath,
                                    local_abspath, svn_node_dir,
                                    repos_root_url, repos_uuid,
                                    FUNC21(repos_root_url,
                                                          url, pool),
                                    external_peg_rev,
                                    external_rev,
                                    pool));

              FUNC19(subpool);
              goto cleanup;
            }

          /* We'd really prefer not to have to do a brute-force
             relegation -- blowing away the current external working
             copy and checking it out anew -- so we'll first see if we
             can get away with a generally cheaper relocation (if
             required) and switch-style update.

             To do so, we need to know the repository root URL of the
             external working copy as it currently sits. */
          err = FUNC28(NULL, NULL,
                                            &repos_root_url, &repos_uuid,
                                            ctx->wc_ctx, local_abspath,
                                            pool, subpool);
          if (err)
            {
              if (err->apr_err != SVN_ERR_WC_PATH_NOT_FOUND
                  && err->apr_err != SVN_ERR_WC_NOT_WORKING_COPY)
                return FUNC15(err);

              FUNC13(err);
              repos_root_url = NULL;
              repos_uuid = NULL;
            }

          if (repos_root_url)
            {
              /* If the new external target URL is not obviously a
                 child of the external working copy's current
                 repository root URL... */
              if (! FUNC20(repos_root_url, url))
                {
                  const char *repos_root;

                  /* ... then figure out precisely which repository
                      root URL that target URL *is* a child of ... */
                  FUNC0(FUNC8(&repos_root, NULL, url,
                                                    ctx, subpool, subpool));

                  /* ... and use that to try to relocate the external
                     working copy to the target location.  */
                  err = FUNC9(local_abspath, repos_root_url,
                                             repos_root, FALSE, ctx, subpool);

                  /* If the relocation failed because the new URL
                     points to a totally different repository, we've
                     no choice but to relegate and check out a new WC. */
                  if (err
                      && (err->apr_err == SVN_ERR_WC_INVALID_RELOCATION
                          || (err->apr_err
                              == SVN_ERR_CLIENT_INVALID_RELOCATION)))
                    {
                      FUNC13(err);
                      goto relegate;
                    }
                  else if (err)
                    return FUNC15(err);

                  /* If the relocation went without a hitch, we should
                     have a new repository root URL. */
                  repos_root_url = repos_root;
                }

              FUNC0(FUNC6(NULL, local_abspath, url,
                                                  peg_revision, revision,
                                                  svn_depth_infinity,
                                                  TRUE, FALSE, FALSE,
                                                  TRUE /* ignore_ancestry */,
                                                  timestamp_sleep,
                                                  ctx, subpool));

              FUNC0(FUNC23(ctx->wc_ctx,
                                                defining_abspath,
                                                local_abspath, svn_node_dir,
                                                repos_root_url, repos_uuid,
                                                FUNC21(
                                                            repos_root_url,
                                                            url, subpool),
                                                external_peg_rev,
                                                external_rev,
                                                subpool));

              FUNC19(subpool);
              goto cleanup;
            }
        }
    }

 relegate:

  /* Fall back on removing the WC and checking out a new one. */

  /* Ensure that we don't have any RA sessions or WC locks from failed
     operations above. */
  FUNC19(subpool);

  if (kind == svn_node_dir)
    {
      /* Buh-bye, old and busted ... */
      FUNC0(FUNC3(ctx->wc_ctx, defining_abspath,
                                    local_abspath,
                                    ctx->cancel_func, ctx->cancel_baton,
                                    ctx->notify_func2, ctx->notify_baton2,
                                    pool));
    }
  else
    {
      /* The target dir might have multiple components.  Guarantee
         the path leading down to the last component. */
      const char *parent = FUNC10(local_abspath, pool);
      FUNC0(FUNC17(parent, pool));
    }

  /* ... Hello, new hotness. */
  FUNC0(FUNC5(NULL, timestamp_sleep,
                                        url, local_abspath, peg_revision,
                                        revision, svn_depth_infinity,
                                        FALSE, FALSE,
                                        ra_session,
                                        ctx, pool));

  FUNC0(FUNC28(NULL, NULL,
                                      &repos_root_url,
                                      &repos_uuid,
                                      ctx->wc_ctx, local_abspath,
                                      pool, pool));

  FUNC0(FUNC23(ctx->wc_ctx,
                                    defining_abspath,
                                    local_abspath, svn_node_dir,
                                    repos_root_url, repos_uuid,
                                    FUNC21(repos_root_url,
                                                          url, pool),
                                    external_peg_rev,
                                    external_rev,
                                    pool));

 cleanup:
  /* Issues #4123 and #4130: We don't need to keep the newly checked
     out external's DB open. */
  FUNC0(FUNC22(local_abspath, ctx->wc_ctx, pool));

  return SVN_NO_ERROR;
}