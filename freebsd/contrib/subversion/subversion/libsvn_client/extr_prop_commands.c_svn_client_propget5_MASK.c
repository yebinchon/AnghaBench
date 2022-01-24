#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_44__   TYPE_5__ ;
typedef  struct TYPE_43__   TYPE_4__ ;
typedef  struct TYPE_42__   TYPE_3__ ;
typedef  struct TYPE_41__   TYPE_2__ ;
typedef  struct TYPE_40__   TYPE_1__ ;

/* Type definitions */
typedef  void* svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_ra_session_t ;
typedef  int /*<<< orphan*/  svn_prop_inherited_item_t ;
struct TYPE_40__ {void* number; } ;
struct TYPE_41__ {scalar_t__ kind; TYPE_1__ value; } ;
typedef  TYPE_2__ svn_opt_revision_t ;
typedef  scalar_t__ svn_node_kind_t ;
struct TYPE_42__ {scalar_t__ apr_err; } ;
typedef  TYPE_3__ svn_error_t ;
typedef  int /*<<< orphan*/  svn_depth_t ;
struct TYPE_43__ {int /*<<< orphan*/  wc_ctx; } ;
typedef  TYPE_4__ svn_client_ctx_t ;
struct TYPE_44__ {void* rev; int /*<<< orphan*/  url; } ;
typedef  TYPE_5__ svn_client__pathrev_t ;
typedef  int svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_array_header_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ SVN_ERR_CLIENT_BAD_REVISION ; 
 int /*<<< orphan*/  SVN_ERR_CLIENT_VERSIONED_PATH_REQUIRED ; 
 int /*<<< orphan*/  SVN_ERR_UNVERSIONED_RESOURCE ; 
 void* SVN_INVALID_REVNUM ; 
 TYPE_3__* SVN_NO_ERROR ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC7 (char const*) ; 
 TYPE_3__* FUNC8 (int /*<<< orphan*/ **,char const*,char const*,int,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC9 (TYPE_2__ const*,char const*) ; 
 TYPE_2__* FUNC10 (TYPE_2__ const*,TYPE_2__ const*) ; 
 TYPE_3__* FUNC11 (void**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,TYPE_2__ const*,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC12 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC13 (int /*<<< orphan*/ **,TYPE_5__**,char const*,int /*<<< orphan*/ *,TYPE_2__ const*,TYPE_2__ const*,TYPE_4__*,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,char const*,int /*<<< orphan*/ ,char*,scalar_t__,void*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC15 (char const**,int /*<<< orphan*/ *,char const*,TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (char const*) ; 
 int /*<<< orphan*/  FUNC17 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_3__*) ; 
 TYPE_3__* FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC21 (TYPE_3__*) ; 
 scalar_t__ svn_node_none ; 
 scalar_t__ svn_node_unknown ; 
 scalar_t__ svn_opt_revision_base ; 
 scalar_t__ svn_opt_revision_committed ; 
 void* svn_opt_revision_number ; 
 scalar_t__ svn_opt_revision_unspecified ; 
 scalar_t__ svn_opt_revision_working ; 
 scalar_t__ FUNC22 (char const*) ; 
 char* FUNC23 (char const*,char const*,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC24 (int /*<<< orphan*/ *,char*,void*,scalar_t__*,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC25 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char const*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC26 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const**,char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC27 (scalar_t__*,int /*<<< orphan*/ ,char const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC28(apr_hash_t **props,
                    apr_array_header_t **inherited_props,
                    const char *propname,
                    const char *target,
                    const svn_opt_revision_t *peg_revision,
                    const svn_opt_revision_t *revision,
                    svn_revnum_t *actual_revnum,
                    svn_depth_t depth,
                    const apr_array_header_t *changelists,
                    svn_client_ctx_t *ctx,
                    apr_pool_t *result_pool,
                    apr_pool_t *scratch_pool)
{
  svn_revnum_t revnum;
  svn_boolean_t local_explicit_props;
  svn_boolean_t local_iprops;

  FUNC2(FUNC7(propname));
  if (!FUNC22(target))
    FUNC3(FUNC16(target));

  peg_revision = FUNC9(peg_revision,
                                                        target);
  revision = FUNC10(revision, peg_revision);

  local_explicit_props =
    (! FUNC22(target)
     && FUNC0(peg_revision->kind)
     && FUNC0(revision->kind));

  local_iprops =
    (local_explicit_props
     && (peg_revision->kind == svn_opt_revision_working
         || peg_revision->kind == svn_opt_revision_unspecified )
     && (revision->kind == svn_opt_revision_working
         || revision->kind == svn_opt_revision_unspecified ));

  if (local_explicit_props)
    {
      svn_node_kind_t kind;
      svn_boolean_t pristine;
      svn_error_t *err;

      /* If FALSE, we want the working revision. */
      pristine = (revision->kind == svn_opt_revision_committed
                  || revision->kind == svn_opt_revision_base);

      FUNC2(FUNC27(&kind, ctx->wc_ctx, target,
                                pristine, FALSE,
                                scratch_pool));

      if (kind == svn_node_unknown || kind == svn_node_none)
        {
          /* svn uses SVN_ERR_UNVERSIONED_RESOURCE as warning only
             for this function. */
          return FUNC20(SVN_ERR_UNVERSIONED_RESOURCE, NULL,
                                   FUNC4("'%s' is not under version control"),
                                   FUNC17(target,
                                                          scratch_pool));
        }

      err = FUNC11(&revnum, NULL, ctx->wc_ctx,
                                            target, NULL, revision,
                                            scratch_pool);
      if (err && err->apr_err == SVN_ERR_CLIENT_BAD_REVISION)
        {
          FUNC18(err);
          revnum = SVN_INVALID_REVNUM;
        }
      else if (err)
        return FUNC21(err);

      if (inherited_props && local_iprops)
        {
          const char *repos_root_url;

          FUNC2(FUNC25(inherited_props, ctx->wc_ctx,
                                     target, propname,
                                     result_pool, scratch_pool));
          FUNC2(FUNC15(&repos_root_url, NULL,
                                            target, ctx, scratch_pool,
                                            scratch_pool));
          FUNC2(FUNC12(*inherited_props,
                                                     repos_root_url,
                                                     result_pool,
                                                     scratch_pool));
        }

      FUNC2(FUNC8(props, propname, target,
                               pristine, kind,
                               depth, changelists, ctx, result_pool,
                               scratch_pool));
    }

  if ((inherited_props && !local_iprops)
      || !local_explicit_props)
    {
      svn_ra_session_t *ra_session;
      svn_node_kind_t kind;
      svn_opt_revision_t new_operative_rev;
      svn_opt_revision_t new_peg_rev;

      /* Peg or operative revisions may be WC specific for
         TARGET's explicit props, but still require us to
         contact the repository for the inherited properties. */
      if (FUNC1(peg_revision->kind)
          || FUNC1(revision->kind))
        {
          const char *repos_relpath;
          const char *repos_root_url;
          const char *local_abspath;

          /* Avoid assertion on the next line when somebody accidentally asks for
             a working copy revision on a URL */
          if (FUNC22(target))
            return FUNC19(SVN_ERR_CLIENT_VERSIONED_PATH_REQUIRED,
                                    NULL, NULL);

          FUNC3(FUNC16(target));
          local_abspath = target;

          if (FUNC1(peg_revision->kind))
            {
              FUNC2(FUNC26(NULL, NULL,
                                              &repos_relpath,
                                              &repos_root_url,
                                              NULL, NULL, NULL,
                                              ctx->wc_ctx,
                                              local_abspath,
                                              FALSE, /* scan_deleted */
                                              result_pool,
                                              scratch_pool));
              if (repos_relpath)
                {
                  target = FUNC23(repos_root_url,
                                                       repos_relpath,
                                                       scratch_pool);
                  if (FUNC1(peg_revision->kind))
                    {
                      svn_revnum_t resolved_peg_rev;

                      FUNC2(FUNC11(
                        &resolved_peg_rev, NULL, ctx->wc_ctx,
                        local_abspath, NULL, peg_revision, scratch_pool));
                      new_peg_rev.kind = svn_opt_revision_number;
                      new_peg_rev.value.number = resolved_peg_rev;
                      peg_revision = &new_peg_rev;
                    }

                  if (FUNC1(revision->kind))
                    {
                      svn_revnum_t resolved_operative_rev;

                      FUNC2(FUNC11(
                        &resolved_operative_rev, NULL, ctx->wc_ctx,
                        local_abspath, NULL, revision, scratch_pool));
                      new_operative_rev.kind = svn_opt_revision_number;
                      new_operative_rev.value.number = resolved_operative_rev;
                      revision = &new_operative_rev;
                    }
                }
              else
                {
                  /* TARGET doesn't exist in the repository, so there are
                     obviously not inherited props to be found there. */
                  local_iprops = TRUE;
                  *inherited_props = FUNC5(
                    result_pool, 0, sizeof(svn_prop_inherited_item_t *));
                }
            }
        }

      /* Do we still have anything to ask the repository about? */
      if (!local_explicit_props || !local_iprops)
        {
          svn_client__pathrev_t *loc;

          /* Get an RA plugin for this filesystem object. */
          FUNC2(FUNC13(&ra_session, &loc,
                                                    target, NULL,
                                                    peg_revision,
                                                    revision, ctx,
                                                    scratch_pool));

          FUNC2(FUNC24(ra_session, "", loc->rev, &kind,
                                    scratch_pool));

          if (!local_explicit_props)
            *props = FUNC6(result_pool);

          FUNC2(FUNC14(
                                 !local_explicit_props ? *props : NULL,
                                 !local_iprops ? inherited_props : NULL,
                                 propname, loc->url, "",
                                 kind, loc->rev, ra_session,
                                 depth, result_pool, scratch_pool));
          revnum = loc->rev;
        }
    }

  if (actual_revnum)
    *actual_revnum = revnum;
  return SVN_NO_ERROR;
}