
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


typedef int svn_proplist_receiver2_t ;
struct TYPE_21__ {scalar_t__ kind; } ;
typedef TYPE_1__ svn_opt_revision_t ;
typedef scalar_t__ svn_node_kind_t ;
struct TYPE_22__ {scalar_t__ apr_err; } ;
typedef TYPE_2__ svn_error_t ;
typedef int svn_depth_t ;
struct TYPE_23__ {int wc_ctx; int cancel_baton; int cancel_func; } ;
typedef TYPE_3__ svn_client_ctx_t ;
typedef int svn_boolean_t ;
struct recursive_proplist_receiver_baton {char const* anchor_abspath; char const* anchor; TYPE_4__* iprops; void* wrapped_receiver_baton; int wrapped_receiver; int wc_ctx; } ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
struct TYPE_24__ {scalar_t__ nelts; } ;
typedef TYPE_4__ apr_array_header_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_UNVERSIONED_RESOURCE ;
 scalar_t__ SVN_ERR_WC_PATH_UNEXPECTED_STATUS ;
 TYPE_2__* SVN_NO_ERROR ;
 int _ (char*) ;
 int * apr_hash_make (int *) ;
 int call_receiver (char const*,int *,TYPE_4__*,int ,void*,int *) ;
 int recursive_proplist_receiver ;
 scalar_t__ strcmp (char const*,char const*) ;
 int svn_client__iprop_relpaths_to_urls (TYPE_4__*,char const*,int *,int *) ;
 int svn_client_get_repos_root (char const**,int *,char const*,TYPE_3__*,int *,int *) ;
 int svn_dirent_get_absolute (char const**,char const*,int *) ;
 int svn_dirent_local_style (char const*,int *) ;
 int svn_error_clear (TYPE_2__*) ;
 TYPE_2__* svn_error_createf (int ,int *,int ,int ) ;
 TYPE_2__* svn_error_trace (TYPE_2__*) ;
 int svn_hash_from_cstring_keys (int **,TYPE_4__ const*,int *) ;
 scalar_t__ svn_node_dir ;
 scalar_t__ svn_node_none ;
 scalar_t__ svn_node_unknown ;
 scalar_t__ svn_opt_revision_base ;
 scalar_t__ svn_opt_revision_committed ;
 scalar_t__ svn_wc__changelist_match (int ,char const*,int *,int *) ;
 int svn_wc__get_iprops (TYPE_4__**,int ,char const*,int *,int *,int *) ;
 int svn_wc__prop_list_recursive (int ,char const*,int *,int ,int,TYPE_4__ const*,int ,struct recursive_proplist_receiver_baton*,int ,int ,int *) ;
 int svn_wc_get_pristine_props (int **,int ,char const*,int *,int *) ;
 TYPE_2__* svn_wc_prop_list2 (int **,int ,char const*,int *,int *) ;
 int svn_wc_read_kind2 (scalar_t__*,int ,char const*,int,int ,int *) ;

__attribute__((used)) static svn_error_t *
get_local_props(const char *path_or_url,
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
  apr_hash_t *changelist_hash = ((void*)0);
  const char *local_abspath;
  apr_array_header_t *iprops = ((void*)0);

  SVN_ERR(svn_dirent_get_absolute(&local_abspath, path_or_url,
                                  scratch_pool));

  pristine = ((revision->kind == svn_opt_revision_committed)
              || (revision->kind == svn_opt_revision_base));

  SVN_ERR(svn_wc_read_kind2(&kind, ctx->wc_ctx, local_abspath,
                            pristine, FALSE, scratch_pool));

  if (kind == svn_node_unknown || kind == svn_node_none)
    {


      return svn_error_createf(SVN_ERR_UNVERSIONED_RESOURCE, ((void*)0),
                               _("'%s' is not under version control"),
                               svn_dirent_local_style(local_abspath,
                                                      scratch_pool));
    }

  if (get_target_inherited_props)
    {
      const char *repos_root_url;

      SVN_ERR(svn_wc__get_iprops(&iprops, ctx->wc_ctx, local_abspath,
                                 ((void*)0), scratch_pool, scratch_pool));
      SVN_ERR(svn_client_get_repos_root(&repos_root_url, ((void*)0), local_abspath,
                                        ctx, scratch_pool, scratch_pool));
      SVN_ERR(svn_client__iprop_relpaths_to_urls(iprops, repos_root_url,
                                                 scratch_pool,
                                                 scratch_pool));
    }

  if (changelists && changelists->nelts)
    SVN_ERR(svn_hash_from_cstring_keys(&changelist_hash,
                                       changelists, scratch_pool));


  if (kind == svn_node_dir)
    {
      struct recursive_proplist_receiver_baton rb;

      rb.wc_ctx = ctx->wc_ctx;
      rb.wrapped_receiver = receiver;
      rb.wrapped_receiver_baton = receiver_baton;
      rb.iprops = iprops;
      rb.anchor_abspath = local_abspath;

      if (strcmp(path_or_url, local_abspath) != 0)
        {
          rb.anchor = path_or_url;
        }
      else
        {
          rb.anchor = ((void*)0);
        }

      SVN_ERR(svn_wc__prop_list_recursive(ctx->wc_ctx, local_abspath, ((void*)0),
                                          depth, pristine, changelists,
                                          recursive_proplist_receiver, &rb,
                                          ctx->cancel_func, ctx->cancel_baton,
                                          scratch_pool));

      if (rb.iprops)
        {

          SVN_ERR(call_receiver(path_or_url, ((void*)0) , rb.iprops,
                                receiver, receiver_baton, scratch_pool));
        }
    }
  else if (svn_wc__changelist_match(ctx->wc_ctx, local_abspath,
                                    changelist_hash, scratch_pool))
    {
      apr_hash_t *props;

        if (pristine)
          SVN_ERR(svn_wc_get_pristine_props(&props,
                                            ctx->wc_ctx, local_abspath,
                                            scratch_pool, scratch_pool));
        else
          {
            svn_error_t *err;

            err = svn_wc_prop_list2(&props, ctx->wc_ctx, local_abspath,
                                    scratch_pool, scratch_pool);


            if (err)
              {
                if (err->apr_err != SVN_ERR_WC_PATH_UNEXPECTED_STATUS)
                  return svn_error_trace(err);


                svn_error_clear(err);
                props = apr_hash_make(scratch_pool);
              }
          }

      SVN_ERR(call_receiver(path_or_url, props, iprops,
                            receiver, receiver_baton, scratch_pool));

    }
  return SVN_NO_ERROR;
}
