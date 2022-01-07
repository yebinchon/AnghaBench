
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


typedef int svn_wc_notify_t ;
typedef int svn_ra_session_t ;
struct TYPE_21__ {int tunnel_baton; int open_tunnel_func; int check_tunnel_func; int get_wc_contents; int get_client_string; int * cancel_func; TYPE_4__* progress_baton; int progress_func; int auth_baton; int * invalidate_wc_props; int * push_wc_prop; int * set_wc_prop; int * get_wc_prop; int open_tmp_file; } ;
typedef TYPE_1__ svn_ra_callbacks2_t ;
struct TYPE_22__ {scalar_t__ apr_err; } ;
typedef TYPE_2__ svn_error_t ;
struct TYPE_23__ {int config; int notify_baton2; int (* notify_func2 ) (int ,int *,int *) ;int wc_ctx; int tunnel_baton; int open_tunnel_func; int check_tunnel_func; scalar_t__ cancel_func; int auth_baton; } ;
typedef TYPE_3__ svn_client_ctx_t ;
typedef scalar_t__ svn_boolean_t ;
struct TYPE_24__ {int * wcroot_abspath; int base_dir_abspath; int base_dir_isversioned; TYPE_3__* ctx; int const* commit_items; } ;
typedef TYPE_4__ callback_baton_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_array_header_t ;


 int SVN_CLIENT__MAX_REDIRECT_ATTEMPTS ;
 int SVN_ERR (TYPE_2__*) ;
 int SVN_ERR_ASSERT (int) ;
 int SVN_ERR_CLIENT_CYCLE_DETECTED ;
 scalar_t__ SVN_ERR_WC_NOT_WORKING_COPY ;
 scalar_t__ SVN_ERR_WC_PATH_NOT_FOUND ;
 scalar_t__ SVN_ERR_WC_UPGRADE_REQUIRED ;
 TYPE_2__* SVN_NO_ERROR ;
 int TRUE ;
 int _ (char*) ;
 int * apr_hash_make (int *) ;
 TYPE_4__* apr_pcalloc (int *,int) ;
 int apr_pstrdup (int *,char const*) ;
 int * cancel_callback ;
 int get_client_string ;
 int get_wc_contents ;
 int * get_wc_prop ;
 int * invalidate_wc_props ;
 int open_tmp_file ;
 int progress_func ;
 int * push_wc_prop ;
 int * set_wc_prop ;
 int stub1 (int ,int *,int *) ;
 scalar_t__ svn_dirent_is_absolute (char const*) ;
 int svn_error_clear (TYPE_2__*) ;
 TYPE_2__* svn_error_createf (int ,int *,int ,char const*) ;
 TYPE_2__* svn_error_trace (TYPE_2__*) ;
 scalar_t__ svn_hash_gets (int *,char const*) ;
 int svn_hash_sets (int *,char const*,void*) ;
 TYPE_2__* svn_ra_create_callbacks (TYPE_1__**,int *) ;
 TYPE_2__* svn_ra_open4 (int **,char const**,char const*,char const*,TYPE_1__*,TYPE_4__*,int ,int *) ;
 TYPE_2__* svn_wc__get_wcroot (int **,int ,char const*,int *,int *) ;
 TYPE_2__* svn_wc__node_get_repos_info (int *,int *,int *,char const**,int ,char const*,int *,int *) ;
 int * svn_wc_create_notify_url (char const*,int ,int *) ;
 int svn_wc_notify_url_redirect ;

svn_error_t *
svn_client__open_ra_session_internal(svn_ra_session_t **ra_session,
                                     const char **corrected_url,
                                     const char *base_url,
                                     const char *base_dir_abspath,
                                     const apr_array_header_t *commit_items,
                                     svn_boolean_t write_dav_props,
                                     svn_boolean_t read_dav_props,
                                     svn_client_ctx_t *ctx,
                                     apr_pool_t *result_pool,
                                     apr_pool_t *scratch_pool)
{
  svn_ra_callbacks2_t *cbtable;
  callback_baton_t *cb = apr_pcalloc(result_pool, sizeof(*cb));
  const char *uuid = ((void*)0);

  SVN_ERR_ASSERT(!write_dav_props || read_dav_props);
  SVN_ERR_ASSERT(!read_dav_props || base_dir_abspath != ((void*)0));
  SVN_ERR_ASSERT(base_dir_abspath == ((void*)0)
                        || svn_dirent_is_absolute(base_dir_abspath));

  SVN_ERR(svn_ra_create_callbacks(&cbtable, result_pool));
  cbtable->open_tmp_file = open_tmp_file;
  cbtable->get_wc_prop = read_dav_props ? get_wc_prop : ((void*)0);
  cbtable->set_wc_prop = (write_dav_props && read_dav_props)
                          ? set_wc_prop : ((void*)0);
  cbtable->push_wc_prop = commit_items ? push_wc_prop : ((void*)0);
  cbtable->invalidate_wc_props = (write_dav_props && read_dav_props)
                                  ? invalidate_wc_props : ((void*)0);
  cbtable->auth_baton = ctx->auth_baton;
  cbtable->progress_func = progress_func;
  cbtable->progress_baton = cb;
  cbtable->cancel_func = ctx->cancel_func ? cancel_callback : ((void*)0);
  cbtable->get_client_string = get_client_string;
  if (base_dir_abspath)
    cbtable->get_wc_contents = get_wc_contents;
  cbtable->check_tunnel_func = ctx->check_tunnel_func;
  cbtable->open_tunnel_func = ctx->open_tunnel_func;
  cbtable->tunnel_baton = ctx->tunnel_baton;

  cb->commit_items = commit_items;
  cb->ctx = ctx;

  if (base_dir_abspath && (read_dav_props || write_dav_props))
    {
      svn_error_t *err = svn_wc__node_get_repos_info(((void*)0), ((void*)0), ((void*)0), &uuid,
                                                     ctx->wc_ctx,
                                                     base_dir_abspath,
                                                     result_pool,
                                                     scratch_pool);

      if (err && (err->apr_err == SVN_ERR_WC_NOT_WORKING_COPY
                  || err->apr_err == SVN_ERR_WC_PATH_NOT_FOUND
                  || err->apr_err == SVN_ERR_WC_UPGRADE_REQUIRED))
        {
          svn_error_clear(err);
          uuid = ((void*)0);
        }
      else
        {
          SVN_ERR(err);
          cb->base_dir_isversioned = TRUE;
        }
      cb->base_dir_abspath = apr_pstrdup(result_pool, base_dir_abspath);
    }

  if (base_dir_abspath)
    {
      svn_error_t *err = svn_wc__get_wcroot(&cb->wcroot_abspath,
                                            ctx->wc_ctx, base_dir_abspath,
                                            result_pool, scratch_pool);

      if (err)
        {
          if (err->apr_err != SVN_ERR_WC_NOT_WORKING_COPY
              && err->apr_err != SVN_ERR_WC_PATH_NOT_FOUND
              && err->apr_err != SVN_ERR_WC_UPGRADE_REQUIRED)
            return svn_error_trace(err);

          svn_error_clear(err);
          cb->wcroot_abspath = ((void*)0);
        }
    }





  if (corrected_url)
    {
      apr_hash_t *attempted = apr_hash_make(scratch_pool);
      int attempts_left = SVN_CLIENT__MAX_REDIRECT_ATTEMPTS;

      *corrected_url = ((void*)0);
      while (attempts_left--)
        {
          const char *corrected = ((void*)0);



          SVN_ERR(svn_ra_open4(ra_session,
                               attempts_left == 0 ? ((void*)0) : &corrected,
                               base_url, uuid, cbtable, cb, ctx->config,
                               result_pool));


          if (! corrected)
            break;


          if (ctx->notify_func2 != ((void*)0))
            {
              svn_wc_notify_t *notify =
                svn_wc_create_notify_url(corrected,
                                         svn_wc_notify_url_redirect,
                                         scratch_pool);
              ctx->notify_func2(ctx->notify_baton2, notify, scratch_pool);
            }


          *corrected_url = corrected;


          if (svn_hash_gets(attempted, corrected))
            return svn_error_createf(SVN_ERR_CLIENT_CYCLE_DETECTED, ((void*)0),
                                     _("Redirect cycle detected for URL '%s'"),
                                     corrected);


          svn_hash_sets(attempted, corrected, (void *)1);
          base_url = corrected;
        }
    }
  else
    {
      SVN_ERR(svn_ra_open4(ra_session, ((void*)0), base_url,
                           uuid, cbtable, cb, ctx->config, result_pool));
    }

  return SVN_NO_ERROR;
}
