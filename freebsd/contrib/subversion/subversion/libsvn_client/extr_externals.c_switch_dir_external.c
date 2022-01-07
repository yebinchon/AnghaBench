
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_44__ TYPE_4__ ;
typedef struct TYPE_43__ TYPE_3__ ;
typedef struct TYPE_42__ TYPE_2__ ;
typedef struct TYPE_41__ TYPE_1__ ;


typedef int svn_revnum_t ;
typedef int svn_ra_session_t ;
struct TYPE_41__ {int number; } ;
struct TYPE_42__ {scalar_t__ kind; TYPE_1__ value; } ;
typedef TYPE_2__ svn_opt_revision_t ;
typedef scalar_t__ svn_node_kind_t ;
struct TYPE_43__ {scalar_t__ apr_err; } ;
typedef TYPE_3__ svn_error_t ;
struct TYPE_44__ {int wc_ctx; int notify_baton2; int notify_func2; int cancel_baton; int cancel_func; } ;
typedef TYPE_4__ svn_client_ctx_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (TYPE_3__*) ;
 int SVN_ERR_ASSERT (int ) ;
 scalar_t__ SVN_ERR_CLIENT_INVALID_RELOCATION ;
 scalar_t__ SVN_ERR_WC_INVALID_RELOCATION ;
 scalar_t__ SVN_ERR_WC_NOT_WORKING_COPY ;
 scalar_t__ SVN_ERR_WC_PATH_NOT_FOUND ;
 int SVN_ERR_WC_PATH_UNEXPECTED_STATUS ;
 int SVN_INVALID_REVNUM ;
 TYPE_3__* SVN_NO_ERROR ;
 int SVN_PROP_EXTERNALS ;
 int TRUE ;
 int _ (char*) ;
 TYPE_3__* relegate_dir_external (int ,char const*,char const*,int ,int ,int ,int ,int *) ;
 scalar_t__ strcmp (char const*,char const*) ;
 TYPE_3__* svn_client__checkout_internal (int *,int *,char const*,char const*,TYPE_2__ const*,TYPE_2__ const*,int ,int ,int ,int *,TYPE_4__*,int *) ;
 TYPE_3__* svn_client__switch_internal (int *,char const*,char const*,TYPE_2__ const*,TYPE_2__ const*,int ,int ,int ,int ,int ,int *,TYPE_4__*,int *) ;
 TYPE_3__* svn_client__update_internal (int *,int *,char const*,TYPE_2__ const*,int ,int ,int ,int ,int ,int ,int ,int *,TYPE_4__*,int *) ;
 TYPE_3__* svn_client_get_repos_root (char const**,int *,char const*,TYPE_4__*,int *,int *) ;
 TYPE_3__* svn_client_relocate2 (char const*,char const*,char const*,int ,TYPE_4__*,int *) ;
 int svn_depth_infinity ;
 int svn_depth_unknown ;
 char* svn_dirent_dirname (char const*,int *) ;
 int svn_dirent_is_absolute (char const*) ;
 int svn_dirent_local_style (char const*,int *) ;
 int svn_error_clear (TYPE_3__*) ;
 TYPE_3__* svn_error_createf (int ,int *,int ,char const*,int ,int ,int ) ;
 TYPE_3__* svn_error_trace (TYPE_3__*) ;
 TYPE_3__* svn_io_check_path (char const*,scalar_t__*,int *) ;
 TYPE_3__* svn_io_make_dir_recursively (char const*,int *) ;
 scalar_t__ svn_node_dir ;
 scalar_t__ svn_node_unknown ;
 scalar_t__ svn_opt_revision_number ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 int svn_uri__is_ancestor (char const*,char const*) ;
 int svn_uri_skip_ancestor (char const*,char const*,int *) ;
 TYPE_3__* svn_wc__close_db (char const*,int ,int *) ;
 TYPE_3__* svn_wc__external_register (int ,char const*,char const*,scalar_t__,char const*,char const*,int ,int ,int ,int *) ;
 TYPE_3__* svn_wc__external_remove (int ,char const*,char const*,int ,int ,int ,int *) ;
 TYPE_3__* svn_wc__get_wcroot (char const**,int ,char const*,int *,int *) ;
 TYPE_3__* svn_wc__is_wcroot (int *,int ,char const*,int *) ;
 TYPE_3__* svn_wc__node_get_base (scalar_t__*,int *,int *,char const**,char const**,int *,int ,char const*,int ,int *,int *) ;
 TYPE_3__* svn_wc__node_get_repos_info (int *,int *,char const**,char const**,int ,char const*,int *,int *) ;
 TYPE_3__* svn_wc__node_get_url (char const**,int ,char const*,int *,int *) ;

__attribute__((used)) static svn_error_t *
switch_dir_external(const char *local_abspath,
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
  apr_pool_t *subpool = svn_pool_create(pool);
  const char *repos_root_url;
  const char *repos_uuid;

  SVN_ERR_ASSERT(svn_dirent_is_absolute(local_abspath));

  if (peg_revision->kind == svn_opt_revision_number)
    external_peg_rev = peg_revision->value.number;

  if (revision->kind == svn_opt_revision_number)
    external_rev = revision->value.number;
  SVN_ERR(svn_wc__node_get_base(&kind, ((void*)0), ((void*)0),
                                &repos_root_url, &repos_uuid,
                                ((void*)0), ctx->wc_ctx, local_abspath,
                                TRUE,
                                pool, pool));
  if (kind != svn_node_unknown)
    {
      const char *wcroot_abspath;
      const char *defining_wcroot_abspath;

      SVN_ERR(svn_wc__get_wcroot(&wcroot_abspath, ctx->wc_ctx,
                                 local_abspath, pool, pool));
      SVN_ERR(svn_wc__get_wcroot(&defining_wcroot_abspath, ctx->wc_ctx,
                                 defining_abspath, pool, pool));
      if (strcmp(wcroot_abspath, defining_wcroot_abspath) == 0)
        return svn_error_createf(SVN_ERR_WC_PATH_UNEXPECTED_STATUS, ((void*)0),
                                 _("The external '%s' defined in %s at '%s' "
                                   "cannot be checked out because '%s' is "
                                   "already a versioned path."),
                                   url_from_externals_definition,
                                   SVN_PROP_EXTERNALS,
                                   svn_dirent_local_style(defining_abspath,
                                                          pool),
                                   svn_dirent_local_style(local_abspath,
                                                          pool));
    }



  SVN_ERR(svn_io_check_path(local_abspath, &kind, pool));
  if (kind == svn_node_dir)
    {
      const char *node_url;


      err = svn_wc__node_get_url(&node_url, ctx->wc_ctx, local_abspath,
                                 pool, subpool);
      if (err && err->apr_err == SVN_ERR_WC_PATH_NOT_FOUND)
        {
          svn_error_clear(err);
          err = SVN_NO_ERROR;
          goto relegate;
        }
      else if (err)
        return svn_error_trace(err);

      if (node_url)
        {
          svn_boolean_t is_wcroot;

          SVN_ERR(svn_wc__is_wcroot(&is_wcroot, ctx->wc_ctx, local_abspath,
                                    pool));

          if (! is_wcroot)
          {


            err = svn_wc__external_remove(ctx->wc_ctx, defining_abspath,
                                          local_abspath,
                                          TRUE ,
                                          ctx->cancel_func, ctx->cancel_baton,
                                          pool);

            if (err && err->apr_err == SVN_ERR_WC_PATH_NOT_FOUND)
              {

                svn_error_clear(err);
                err = ((void*)0);
              }
            else if (err)
              return svn_error_trace(err);

            return svn_error_createf(SVN_ERR_WC_PATH_UNEXPECTED_STATUS, ((void*)0),
                                     _("The external '%s' defined in %s at '%s' "
                                       "cannot be checked out because '%s' is "
                                       "already a versioned path."),
                                     url_from_externals_definition,
                                     SVN_PROP_EXTERNALS,
                                     svn_dirent_local_style(defining_abspath,
                                                            pool),
                                     svn_dirent_local_style(local_abspath,
                                                            pool));
          }




          if (strcmp(node_url, url) == 0)
            {
              SVN_ERR(svn_client__update_internal(((void*)0), timestamp_sleep,
                                                  local_abspath,
                                                  revision, svn_depth_unknown,
                                                  FALSE, FALSE, FALSE, TRUE,
                                                  FALSE, TRUE,
                                                  ra_session, ctx, subpool));




              SVN_ERR(svn_wc__external_register(ctx->wc_ctx,
                                    defining_abspath,
                                    local_abspath, svn_node_dir,
                                    repos_root_url, repos_uuid,
                                    svn_uri_skip_ancestor(repos_root_url,
                                                          url, pool),
                                    external_peg_rev,
                                    external_rev,
                                    pool));

              svn_pool_destroy(subpool);
              goto cleanup;
            }
          err = svn_wc__node_get_repos_info(((void*)0), ((void*)0),
                                            &repos_root_url, &repos_uuid,
                                            ctx->wc_ctx, local_abspath,
                                            pool, subpool);
          if (err)
            {
              if (err->apr_err != SVN_ERR_WC_PATH_NOT_FOUND
                  && err->apr_err != SVN_ERR_WC_NOT_WORKING_COPY)
                return svn_error_trace(err);

              svn_error_clear(err);
              repos_root_url = ((void*)0);
              repos_uuid = ((void*)0);
            }

          if (repos_root_url)
            {



              if (! svn_uri__is_ancestor(repos_root_url, url))
                {
                  const char *repos_root;



                  SVN_ERR(svn_client_get_repos_root(&repos_root, ((void*)0), url,
                                                    ctx, subpool, subpool));



                  err = svn_client_relocate2(local_abspath, repos_root_url,
                                             repos_root, FALSE, ctx, subpool);




                  if (err
                      && (err->apr_err == SVN_ERR_WC_INVALID_RELOCATION
                          || (err->apr_err
                              == SVN_ERR_CLIENT_INVALID_RELOCATION)))
                    {
                      svn_error_clear(err);
                      goto relegate;
                    }
                  else if (err)
                    return svn_error_trace(err);



                  repos_root_url = repos_root;
                }

              SVN_ERR(svn_client__switch_internal(((void*)0), local_abspath, url,
                                                  peg_revision, revision,
                                                  svn_depth_infinity,
                                                  TRUE, FALSE, FALSE,
                                                  TRUE ,
                                                  timestamp_sleep,
                                                  ctx, subpool));

              SVN_ERR(svn_wc__external_register(ctx->wc_ctx,
                                                defining_abspath,
                                                local_abspath, svn_node_dir,
                                                repos_root_url, repos_uuid,
                                                svn_uri_skip_ancestor(
                                                            repos_root_url,
                                                            url, subpool),
                                                external_peg_rev,
                                                external_rev,
                                                subpool));

              svn_pool_destroy(subpool);
              goto cleanup;
            }
        }
    }

 relegate:





  svn_pool_destroy(subpool);

  if (kind == svn_node_dir)
    {

      SVN_ERR(relegate_dir_external(ctx->wc_ctx, defining_abspath,
                                    local_abspath,
                                    ctx->cancel_func, ctx->cancel_baton,
                                    ctx->notify_func2, ctx->notify_baton2,
                                    pool));
    }
  else
    {


      const char *parent = svn_dirent_dirname(local_abspath, pool);
      SVN_ERR(svn_io_make_dir_recursively(parent, pool));
    }


  SVN_ERR(svn_client__checkout_internal(((void*)0), timestamp_sleep,
                                        url, local_abspath, peg_revision,
                                        revision, svn_depth_infinity,
                                        FALSE, FALSE,
                                        ra_session,
                                        ctx, pool));

  SVN_ERR(svn_wc__node_get_repos_info(((void*)0), ((void*)0),
                                      &repos_root_url,
                                      &repos_uuid,
                                      ctx->wc_ctx, local_abspath,
                                      pool, pool));

  SVN_ERR(svn_wc__external_register(ctx->wc_ctx,
                                    defining_abspath,
                                    local_abspath, svn_node_dir,
                                    repos_root_url, repos_uuid,
                                    svn_uri_skip_ancestor(repos_root_url,
                                                          url, pool),
                                    external_peg_rev,
                                    external_rev,
                                    pool));

 cleanup:


  SVN_ERR(svn_wc__close_db(local_abspath, ctx->wc_ctx, pool));

  return SVN_NO_ERROR;
}
