#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_4__ ;
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_proplist_receiver2_t ;
struct TYPE_21__ {scalar_t__ kind; } ;
typedef  TYPE_1__ svn_opt_revision_t ;
typedef  scalar_t__ svn_node_kind_t ;
struct TYPE_22__ {scalar_t__ apr_err; } ;
typedef  TYPE_2__ svn_error_t ;
typedef  int /*<<< orphan*/  svn_depth_t ;
struct TYPE_23__ {int /*<<< orphan*/  wc_ctx; int /*<<< orphan*/  cancel_baton; int /*<<< orphan*/  cancel_func; } ;
typedef  TYPE_3__ svn_client_ctx_t ;
typedef  int svn_boolean_t ;
struct recursive_proplist_receiver_baton {char const* anchor_abspath; char const* anchor; TYPE_4__* iprops; void* wrapped_receiver_baton; int /*<<< orphan*/  wrapped_receiver; int /*<<< orphan*/  wc_ctx; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
struct TYPE_24__ {scalar_t__ nelts; } ;
typedef  TYPE_4__ apr_array_header_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_UNVERSIONED_RESOURCE ; 
 scalar_t__ SVN_ERR_WC_PATH_UNEXPECTED_STATUS ; 
 TYPE_2__* SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char const*,int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  recursive_proplist_receiver ; 
 scalar_t__ FUNC4 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char const**,int /*<<< orphan*/ *,char const*,TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char const**,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 TYPE_2__* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ **,TYPE_4__ const*,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_node_dir ; 
 scalar_t__ svn_node_none ; 
 scalar_t__ svn_node_unknown ; 
 scalar_t__ svn_opt_revision_base ; 
 scalar_t__ svn_opt_revision_committed ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_4__**,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,TYPE_4__ const*,int /*<<< orphan*/ ,struct recursive_proplist_receiver_baton*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC17 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (scalar_t__*,int /*<<< orphan*/ ,char const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC19(const char *path_or_url,
                const svn_opt_revision_t *revision,
                svn_depth_t depth,
                const apr_array_header_t *changelists,
                svn_boolean_t get_target_inherited_props,
                svn_proplist_receiver2_t receiver,
                void *receiver_baton,
                svn_client_ctx_t *ctx,
                apr_pool_t *scratch_pool)
{
  svn_boolean_t pristine;
  svn_node_kind_t kind;
  apr_hash_t *changelist_hash = NULL;
  const char *local_abspath;
  apr_array_header_t *iprops = NULL;

  FUNC0(FUNC7(&local_abspath, path_or_url,
                                  scratch_pool));

  pristine = ((revision->kind == svn_opt_revision_committed)
              || (revision->kind == svn_opt_revision_base));

  FUNC0(FUNC18(&kind, ctx->wc_ctx, local_abspath,
                            pristine, FALSE, scratch_pool));

  if (kind == svn_node_unknown || kind == svn_node_none)
    {
      /* svn uses SVN_ERR_UNVERSIONED_RESOURCE as warning only
         for this function. */
      return FUNC10(SVN_ERR_UNVERSIONED_RESOURCE, NULL,
                               FUNC1("'%s' is not under version control"),
                               FUNC8(local_abspath,
                                                      scratch_pool));
    }

  if (get_target_inherited_props)
    {
      const char *repos_root_url;

      FUNC0(FUNC14(&iprops, ctx->wc_ctx, local_abspath,
                                 NULL, scratch_pool, scratch_pool));
      FUNC0(FUNC6(&repos_root_url, NULL, local_abspath,
                                        ctx, scratch_pool, scratch_pool));
      FUNC0(FUNC5(iprops, repos_root_url,
                                                 scratch_pool,
                                                 scratch_pool));
    }

  if (changelists && changelists->nelts)
    FUNC0(FUNC12(&changelist_hash,
                                       changelists, scratch_pool));

  /* Fetch, recursively or not. */
  if (kind == svn_node_dir)
    {
      struct recursive_proplist_receiver_baton rb;

      rb.wc_ctx = ctx->wc_ctx;
      rb.wrapped_receiver = receiver;
      rb.wrapped_receiver_baton = receiver_baton;
      rb.iprops = iprops;
      rb.anchor_abspath = local_abspath;

      if (FUNC4(path_or_url, local_abspath) != 0)
        {
          rb.anchor = path_or_url;
        }
      else
        {
          rb.anchor = NULL;
        }

      FUNC0(FUNC15(ctx->wc_ctx, local_abspath, NULL,
                                          depth, pristine, changelists,
                                          recursive_proplist_receiver, &rb,
                                          ctx->cancel_func, ctx->cancel_baton,
                                          scratch_pool));

      if (rb.iprops)
        {
          /* We didn't report for the root. Report iprops anyway */
          FUNC0(FUNC3(path_or_url, NULL /* props */, rb.iprops,
                                receiver, receiver_baton, scratch_pool));
        }
    }
  else if (FUNC13(ctx->wc_ctx, local_abspath,
                                    changelist_hash, scratch_pool))
    {
      apr_hash_t *props;

        if (pristine)
          FUNC0(FUNC16(&props,
                                            ctx->wc_ctx, local_abspath,
                                            scratch_pool, scratch_pool));
        else
          {
            svn_error_t *err;

            err = FUNC17(&props, ctx->wc_ctx, local_abspath,
                                    scratch_pool, scratch_pool);


            if (err)
              {
                if (err->apr_err != SVN_ERR_WC_PATH_UNEXPECTED_STATUS)
                  return FUNC11(err);
                /* As svn_wc_prop_list2() doesn't return NULL for locally-deleted
                   let's do that here.  */
                FUNC9(err);
                props = FUNC2(scratch_pool);
              }
          }

      FUNC0(FUNC3(path_or_url, props, iprops,
                            receiver, receiver_baton, scratch_pool));

    }
  return SVN_NO_ERROR;
}