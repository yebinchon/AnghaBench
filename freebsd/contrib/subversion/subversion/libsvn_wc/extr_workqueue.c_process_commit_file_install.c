
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_wc__db_t ;
typedef int svn_error_t ;
typedef int svn_cancel_func_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;
struct TYPE_3__ {int mtime; int size; } ;
typedef TYPE_1__ apr_finfo_t ;


 int APR_FINFO_LINK ;
 int APR_FINFO_MIN ;
 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int install_committed_file (scalar_t__*,int *,char const*,int ,void*,int *) ;
 int svn_io_stat (TYPE_1__*,char const*,int,int *) ;
 int svn_wc__db_global_record_fileinfo (int *,char const*,int ,int ,int *) ;
 int svn_wc__internal_file_modified_p (scalar_t__*,int *,char const*,int ,int *) ;

__attribute__((used)) static svn_error_t *
process_commit_file_install(svn_wc__db_t *db,
                       const char *local_abspath,
                       svn_cancel_func_t cancel_func,
                       void *cancel_baton,
                       apr_pool_t *scratch_pool)
{
  svn_boolean_t overwrote_working;
  SVN_ERR(install_committed_file(&overwrote_working, db,
                                 local_abspath,
                                 cancel_func, cancel_baton,
                                 scratch_pool));


  if (overwrote_working)
    {
      apr_finfo_t finfo;

      SVN_ERR(svn_io_stat(&finfo, local_abspath,
                          APR_FINFO_MIN | APR_FINFO_LINK, scratch_pool));
      SVN_ERR(svn_wc__db_global_record_fileinfo(db, local_abspath,
                                                finfo.size, finfo.mtime,
                                                scratch_pool));
    }
  else
    {
      svn_boolean_t modified;
      SVN_ERR(svn_wc__internal_file_modified_p(&modified,
                                               db, local_abspath, FALSE,
                                               scratch_pool));
    }
  return SVN_NO_ERROR;
}
