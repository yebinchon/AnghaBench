
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_35__ TYPE_6__ ;
typedef struct TYPE_34__ TYPE_5__ ;
typedef struct TYPE_33__ TYPE_4__ ;
typedef struct TYPE_32__ TYPE_3__ ;
typedef struct TYPE_31__ TYPE_2__ ;
typedef struct TYPE_30__ TYPE_1__ ;


struct TYPE_30__ {void* client_receiver_baton; int (* client_receiver_func ) (void*,char const*,int *,int *) ;} ;
typedef TYPE_1__ wc_info_receiver_baton_t ;
typedef int svn_ra_session_t ;
struct TYPE_31__ {scalar_t__ kind; } ;
typedef TYPE_2__ svn_opt_revision_t ;
typedef int svn_lock_t ;
struct TYPE_32__ {scalar_t__ apr_err; } ;
typedef TYPE_3__ svn_error_t ;
struct TYPE_33__ {scalar_t__ kind; } ;
typedef TYPE_4__ svn_dirent_t ;
typedef int svn_depth_t ;
typedef int (* svn_client_info_receiver2_t ) (void*,char const*,int *,int *) ;
typedef int svn_client_info2_t ;
struct TYPE_34__ {int wc_ctx; int cancel_baton; int cancel_func; } ;
typedef TYPE_5__ svn_client_ctx_t ;
struct TYPE_35__ {int rev; int url; } ;
typedef TYPE_6__ svn_client__pathrev_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_array_header_t ;


 scalar_t__ SVN_DEPTH_IS_RECURSIVE (int ) ;
 int SVN_ERR (int ) ;
 int SVN_ERR_RA_ILLEGAL_URL ;
 scalar_t__ SVN_ERR_RA_NOT_IMPLEMENTED ;
 TYPE_3__* SVN_NO_ERROR ;
 int _ (char*) ;
 int * apr_hash_make (int *) ;
 int build_info_from_dirent (int **,TYPE_4__*,int *,TYPE_6__*,int *) ;
 int do_external_info (int *,int ,scalar_t__,scalar_t__,int const*,int (*) (void*,char const*,int *,int *),void*,TYPE_5__*,int *) ;
 int push_dir_info (int *,TYPE_6__*,char*,int (*) (void*,char const*,int *,int *),void*,int ,TYPE_5__*,int *,int *) ;
 int same_resource_in_head (scalar_t__*,int ,int ,int *,TYPE_5__*,int *) ;
 int svn_client__ra_session_from_path2 (int **,TYPE_6__**,char const*,int *,TYPE_2__ const*,TYPE_2__ const*,TYPE_5__*,int *) ;
 int svn_depth_empty ;
 int svn_depth_unknown ;
 int svn_error_clear (TYPE_3__*) ;
 TYPE_3__* svn_error_createf (int ,int *,int ,int ,int ) ;
 TYPE_3__* svn_error_trace (TYPE_3__*) ;
 scalar_t__ svn_node_dir ;
 scalar_t__ svn_opt_revision_head ;
 scalar_t__ svn_opt_revision_unspecified ;
 TYPE_3__* svn_ra_get_lock (int *,int **,char*,int *) ;
 TYPE_3__* svn_ra_get_locks2 (int *,int **,char*,int ,int *) ;
 int svn_ra_stat (int *,char*,int ,TYPE_4__**,int *) ;
 char* svn_uri_basename (int ,int *) ;
 int svn_wc__externals_defined_below (int **,int ,char const*,int *,int *) ;
 int svn_wc__get_info (int ,char const*,int ,scalar_t__,scalar_t__,int const*,int ,TYPE_1__*,int ,int ,int *) ;
 int wc_info_receiver ;

svn_error_t *
svn_client_info4(const char *abspath_or_url,
                 const svn_opt_revision_t *peg_revision,
                 const svn_opt_revision_t *revision,
                 svn_depth_t depth,
                 svn_boolean_t fetch_excluded,
                 svn_boolean_t fetch_actual_only,
                 svn_boolean_t include_externals,
                 const apr_array_header_t *changelists,
                 svn_client_info_receiver2_t receiver,
                 void *receiver_baton,
                 svn_client_ctx_t *ctx,
                 apr_pool_t *pool)
{
  svn_ra_session_t *ra_session;
  svn_client__pathrev_t *pathrev;
  svn_lock_t *lock;
  svn_boolean_t related;
  const char *base_name;
  svn_dirent_t *the_ent;
  svn_client_info2_t *info;
  svn_error_t *err;

  if (depth == svn_depth_unknown)
    depth = svn_depth_empty;

  if ((revision == ((void*)0)
       || revision->kind == svn_opt_revision_unspecified)
      && (peg_revision == ((void*)0)
          || peg_revision->kind == svn_opt_revision_unspecified))
    {

      wc_info_receiver_baton_t b;

      b.client_receiver_func = receiver;
      b.client_receiver_baton = receiver_baton;
      SVN_ERR(svn_wc__get_info(ctx->wc_ctx, abspath_or_url, depth,
                               fetch_excluded, fetch_actual_only, changelists,
                               wc_info_receiver, &b,
                               ctx->cancel_func, ctx->cancel_baton, pool));

      if (include_externals && SVN_DEPTH_IS_RECURSIVE(depth))
        {
          apr_hash_t *external_map;

          SVN_ERR(svn_wc__externals_defined_below(&external_map,
                                                  ctx->wc_ctx, abspath_or_url,
                                                  pool, pool));

          SVN_ERR(do_external_info(external_map,
                                   depth, fetch_excluded, fetch_actual_only,
                                   changelists,
                                   receiver, receiver_baton, ctx, pool));
        }

      return SVN_NO_ERROR;
    }






  SVN_ERR(svn_client__ra_session_from_path2(&ra_session, &pathrev,
                                            abspath_or_url, ((void*)0), peg_revision,
                                            revision, ctx, pool));
  base_name = svn_uri_basename(pathrev->url, pool);


  SVN_ERR(svn_ra_stat(ra_session, "", pathrev->rev, &the_ent, pool));

  if (! the_ent)
    return svn_error_createf(SVN_ERR_RA_ILLEGAL_URL, ((void*)0),
                             _("URL '%s' non-existent in revision %ld"),
                             pathrev->url, pathrev->rev);
  SVN_ERR(same_resource_in_head(&related, pathrev->url, pathrev->rev,
                                ra_session, ctx, pool));
  if (related)
    {
      err = svn_ra_get_lock(ra_session, &lock, "", pool);




      if (err && err->apr_err == SVN_ERR_RA_NOT_IMPLEMENTED)
        {
          svn_error_clear(err);
          lock = ((void*)0);
        }
      else if (err)
        return svn_error_trace(err);
    }
  else
    lock = ((void*)0);


  SVN_ERR(build_info_from_dirent(&info, the_ent, lock, pathrev, pool));
  SVN_ERR(receiver(receiver_baton, base_name, info, pool));


  if (depth > svn_depth_empty && (the_ent->kind == svn_node_dir))
    {
      apr_hash_t *locks;

      if (peg_revision->kind == svn_opt_revision_head)
        {
          err = svn_ra_get_locks2(ra_session, &locks, "", depth,
                                  pool);


          if (err && err->apr_err == SVN_ERR_RA_NOT_IMPLEMENTED)
            {
              svn_error_clear(err);
              locks = apr_hash_make(pool);
            }
          else if (err)
            return svn_error_trace(err);
        }
      else
        locks = apr_hash_make(pool);

      SVN_ERR(push_dir_info(ra_session, pathrev, "",
                            receiver, receiver_baton,
                            depth, ctx, locks, pool));
    }

  return SVN_NO_ERROR;
}
