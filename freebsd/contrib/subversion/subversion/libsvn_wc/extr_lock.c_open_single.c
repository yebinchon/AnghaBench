
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


typedef int svn_wc_adm_access_t ;
typedef int svn_wc__db_t ;
struct TYPE_10__ {int apr_err; } ;
typedef TYPE_1__ svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 scalar_t__ APR_STATUS_IS_ENOENT (int ) ;
 int FALSE ;
 int SVN_ERR (TYPE_1__*) ;
 int SVN_ERR_ASSERT (int) ;
 int SVN_ERR_WC_NOT_WORKING_COPY ;
 TYPE_1__* SVN_NO_ERROR ;
 int SVN_WC__VERSION ;
 int _ (char*) ;
 TYPE_1__* adm_access_alloc (int **,char const*,int *,int ,int ,int *,int *) ;
 TYPE_1__* svn_dirent_get_absolute (char const**,char const*,int *) ;
 int svn_dirent_local_style (char const*,int *) ;
 TYPE_1__* svn_error_createf (int ,TYPE_1__*,int ,int ) ;
 TYPE_1__* svn_wc__internal_check_wc (int*,int *,char const*,int ,int *) ;

__attribute__((used)) static svn_error_t *
open_single(svn_wc_adm_access_t **adm_access,
            const char *path,
            svn_boolean_t write_lock,
            svn_wc__db_t *db,
            svn_boolean_t db_provided,
            apr_pool_t *result_pool,
            apr_pool_t *scratch_pool)
{
  const char *local_abspath;
  int wc_format = 0;
  svn_error_t *err;
  svn_wc_adm_access_t *lock;

  SVN_ERR(svn_dirent_get_absolute(&local_abspath, path, scratch_pool));
  err = svn_wc__internal_check_wc(&wc_format, db, local_abspath, FALSE,
                                  scratch_pool);
  if (wc_format == 0 || (err && APR_STATUS_IS_ENOENT(err->apr_err)))
    {
      return svn_error_createf(SVN_ERR_WC_NOT_WORKING_COPY, err,
                               _("'%s' is not a working copy"),
                               svn_dirent_local_style(path, scratch_pool));
    }
  SVN_ERR(err);




  SVN_ERR_ASSERT(wc_format == SVN_WC__VERSION);


  SVN_ERR(adm_access_alloc(&lock, path, db, db_provided, write_lock,
                           result_pool, scratch_pool));


  *adm_access = lock;

  return SVN_NO_ERROR;
}
