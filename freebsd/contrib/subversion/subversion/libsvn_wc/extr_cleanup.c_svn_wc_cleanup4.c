
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_wc_notify_func2_t ;
struct TYPE_3__ {int * db; } ;
typedef TYPE_1__ svn_wc_context_t ;
typedef int svn_wc__db_t ;
typedef int svn_error_t ;
typedef int svn_cancel_func_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int ) ;
 int * SVN_NO_ERROR ;
 int cleanup_internal (int *,char const*,scalar_t__,scalar_t__,scalar_t__,int ,void*,int *) ;
 int svn_dirent_is_absolute (char const*) ;
 int svn_wc__db_base_clear_dav_cache_recursive (int *,char const*,int *) ;
 int svn_wc__db_close (int *) ;
 int svn_wc__db_drop_root (int *,char const*,int *) ;
 int svn_wc__db_open (int **,int *,int ,int ,int *,int *) ;
 int svn_wc__db_vacuum (int *,char const*,int *) ;

svn_error_t *
svn_wc_cleanup4(svn_wc_context_t *wc_ctx,
                const char *local_abspath,
                svn_boolean_t break_locks,
                svn_boolean_t fix_recorded_timestamps,
                svn_boolean_t clear_dav_cache,
                svn_boolean_t vacuum_pristines,
                svn_cancel_func_t cancel_func,
                void *cancel_baton,
                svn_wc_notify_func2_t notify_func,
                void *notify_baton,
                apr_pool_t *scratch_pool)
{
  svn_wc__db_t *db;

  SVN_ERR_ASSERT(svn_dirent_is_absolute(local_abspath));
  SVN_ERR_ASSERT(wc_ctx != ((void*)0));

  if (break_locks)
    {




      SVN_ERR(svn_wc__db_drop_root(wc_ctx->db, local_abspath,
                                   scratch_pool));

      SVN_ERR(svn_wc__db_open(&db,
                              ((void*)0) , FALSE, FALSE,
                              scratch_pool, scratch_pool));
    }
  else
    db = wc_ctx->db;

  SVN_ERR(cleanup_internal(db, local_abspath,
                           break_locks,
                           fix_recorded_timestamps,
                           vacuum_pristines,
                           cancel_func, cancel_baton,
                           scratch_pool));



  if (clear_dav_cache)
    SVN_ERR(svn_wc__db_base_clear_dav_cache_recursive(db, local_abspath,
                                                      scratch_pool));

  if (vacuum_pristines)
    SVN_ERR(svn_wc__db_vacuum(db, local_abspath, scratch_pool));


  if (break_locks)
    SVN_ERR(svn_wc__db_close(db));

  return SVN_NO_ERROR;
}
