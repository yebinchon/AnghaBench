
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_4__ ;
typedef struct TYPE_26__ TYPE_3__ ;
typedef struct TYPE_25__ TYPE_2__ ;
typedef struct TYPE_24__ TYPE_1__ ;


typedef int svn_wc_notify_func2_t ;
struct TYPE_24__ {int * db; } ;
typedef TYPE_1__ svn_wc_context_t ;
typedef int svn_wc__db_t ;
struct TYPE_25__ {int * token; } ;
typedef TYPE_2__ svn_wc__db_lock_t ;
typedef int svn_revnum_t ;
struct TYPE_26__ {TYPE_4__* (* finish_report ) (void*,int *) ;TYPE_4__* (* link_path ) (void*,char*,int ,int ,int ,int ,int *,int *) ;TYPE_4__* (* set_path ) (void*,char*,int ,int ,int ,int *,int *) ;TYPE_4__* (* delete_path ) (void*,char*,int *) ;} ;
typedef TYPE_3__ svn_ra_reporter3_t ;
typedef scalar_t__ svn_node_kind_t ;
struct TYPE_27__ {scalar_t__ apr_err; } ;
typedef TYPE_4__ svn_error_t ;
typedef int svn_cancel_func_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (TYPE_4__*) ;
 scalar_t__ SVN_ERR_WC_PATH_NOT_FOUND ;
 scalar_t__ SVN_ERR_WC_PATH_UNEXPECTED_STATUS ;
 TYPE_4__* SVN_NO_ERROR ;
 TYPE_4__* stub1 (void*,char*,int ,int ,int ,int *,int *) ;
 TYPE_4__* stub2 (void*,char*,int *) ;
 TYPE_4__* stub3 (void*,int *) ;
 TYPE_4__* stub4 (void*,char*,int ,int ,int ,int *,int *) ;
 TYPE_4__* stub5 (void*,char*,int ,int ,int ,int ,int *,int *) ;
 TYPE_4__* stub6 (void*,int *) ;
 int svn_depth_infinity ;
 int svn_error_clear (TYPE_4__*) ;
 TYPE_4__* svn_error_trace (TYPE_4__*) ;
 TYPE_4__* svn_io_check_path (char const*,scalar_t__*,int *) ;
 scalar_t__ svn_node_dir ;
 scalar_t__ svn_node_none ;
 int svn_path_url_add_component2 (char const*,char const*,int *) ;
 TYPE_4__* svn_wc__db_base_get_info (int *,scalar_t__*,int *,char const**,char const**,int *,int *,int *,int *,int *,int *,int *,TYPE_2__**,int *,int *,scalar_t__*,int *,char const*,int *,int *) ;
 TYPE_4__* svn_wc_restore (TYPE_1__*,char const*,scalar_t__,int *) ;

svn_error_t *
svn_wc__crawl_file_external(svn_wc_context_t *wc_ctx,
                            const char *local_abspath,
                            const svn_ra_reporter3_t *reporter,
                            void *report_baton,
                            svn_boolean_t restore_files,
                            svn_boolean_t use_commit_times,
                            svn_cancel_func_t cancel_func,
                            void *cancel_baton,
                            svn_wc_notify_func2_t notify_func,
                            void *notify_baton,
                            apr_pool_t *scratch_pool)
{
  svn_wc__db_t *db = wc_ctx->db;
  svn_error_t *err;
  svn_node_kind_t kind;
  svn_wc__db_lock_t *lock;
  svn_revnum_t revision;
  const char *repos_root_url;
  const char *repos_relpath;
  svn_boolean_t update_root;

  err = svn_wc__db_base_get_info(((void*)0), &kind, &revision,
                                 &repos_relpath, &repos_root_url, ((void*)0), ((void*)0),
                                 ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), &lock,
                                 ((void*)0), ((void*)0), &update_root,
                                 db, local_abspath,
                                 scratch_pool, scratch_pool);

  if (err
      || kind == svn_node_dir
      || !update_root)
    {
      if (err && err->apr_err != SVN_ERR_WC_PATH_NOT_FOUND)
        return svn_error_trace(err);

      svn_error_clear(err);







      SVN_ERR(reporter->set_path(report_baton, "", 0, svn_depth_infinity,
                                 FALSE, ((void*)0), scratch_pool));
      SVN_ERR(reporter->delete_path(report_baton, "", scratch_pool));



      SVN_ERR(reporter->finish_report(report_baton, scratch_pool));

      return SVN_NO_ERROR;
    }
  else
    {
      if (restore_files)
        {
          svn_node_kind_t disk_kind;
          SVN_ERR(svn_io_check_path(local_abspath, &disk_kind, scratch_pool));

          if (disk_kind == svn_node_none)
            {
              err = svn_wc_restore(wc_ctx, local_abspath, use_commit_times,
                                   scratch_pool);

              if (err)
                {
                  if (err->apr_err != SVN_ERR_WC_PATH_UNEXPECTED_STATUS)
                    return svn_error_trace(err);

                  svn_error_clear(err);
                }
            }
        }


      SVN_ERR(reporter->set_path(report_baton, "", revision,
                                 svn_depth_infinity, FALSE, ((void*)0),
                                 scratch_pool));





      SVN_ERR(reporter->link_path(report_baton, "",
                                  svn_path_url_add_component2(repos_root_url,
                                                              repos_relpath,
                                                              scratch_pool),
                                  revision,
                                  svn_depth_infinity,
                                  FALSE ,
                                  lock ? lock->token : ((void*)0),
                                  scratch_pool));
    }

  return svn_error_trace(reporter->finish_report(report_baton, scratch_pool));
}
