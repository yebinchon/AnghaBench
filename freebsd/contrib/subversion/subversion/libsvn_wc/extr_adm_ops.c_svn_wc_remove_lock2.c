
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int db; } ;
typedef TYPE_1__ svn_wc_context_t ;
typedef int svn_skel_t ;
struct TYPE_12__ {scalar_t__ apr_err; } ;
typedef TYPE_2__ svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int ) ;
 int SVN_ERR_ENTRY_NOT_FOUND ;
 scalar_t__ SVN_ERR_WC_PATH_NOT_FOUND ;
 int _ (char*) ;
 int svn_dirent_dirname (char const*,int *) ;
 int svn_dirent_is_absolute (char const*) ;
 int svn_dirent_local_style (char const*,int *) ;
 int svn_error_clear (TYPE_2__*) ;
 TYPE_2__* svn_error_createf (int ,int *,int ,int ) ;
 TYPE_2__* svn_error_trace (TYPE_2__*) ;
 TYPE_2__* svn_wc__db_lock_remove (int ,char const*,int *,int *) ;
 int svn_wc__wq_build_sync_file_flags (int **,int ,char const*,int *,int *) ;
 TYPE_2__* svn_wc__wq_run (int ,char const*,int *,int *,int *) ;
 int svn_wc__write_check (int ,int ,int *) ;

svn_error_t *
svn_wc_remove_lock2(svn_wc_context_t *wc_ctx,
                    const char *local_abspath,
                    apr_pool_t *scratch_pool)
{
  svn_error_t *err;
  svn_skel_t *work_item;

  SVN_ERR_ASSERT(svn_dirent_is_absolute(local_abspath));

  SVN_ERR(svn_wc__write_check(wc_ctx->db,
                              svn_dirent_dirname(local_abspath, scratch_pool),
                              scratch_pool));

  SVN_ERR(svn_wc__wq_build_sync_file_flags(&work_item,
                                           wc_ctx->db, local_abspath,
                                           scratch_pool, scratch_pool));

  err = svn_wc__db_lock_remove(wc_ctx->db, local_abspath, work_item,
                               scratch_pool);
  if (err)
    {
      if (err->apr_err != SVN_ERR_WC_PATH_NOT_FOUND)
        return svn_error_trace(err);


      svn_error_clear(err);
      return svn_error_createf(SVN_ERR_ENTRY_NOT_FOUND, ((void*)0),
                               _("'%s' is not under version control"),
                               svn_dirent_local_style(local_abspath,
                                                      scratch_pool));
    }

  return svn_error_trace(svn_wc__wq_run(wc_ctx->db, local_abspath,
                                        ((void*)0), ((void*)0) ,
                                        scratch_pool));
}
