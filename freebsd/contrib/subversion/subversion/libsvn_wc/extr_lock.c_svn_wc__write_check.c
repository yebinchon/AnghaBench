
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_wc__db_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_WC_NOT_LOCKED ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int svn_dirent_local_style (char const*,int *) ;
 int * svn_error_createf (int ,int *,int ,int ) ;
 int svn_wc__db_wclock_owns_lock (int *,int *,char const*,int ,int *) ;

svn_error_t *
svn_wc__write_check(svn_wc__db_t *db,
                    const char *local_abspath,
                    apr_pool_t *scratch_pool)
{
  svn_boolean_t locked;

  SVN_ERR(svn_wc__db_wclock_owns_lock(&locked, db, local_abspath, FALSE,
                                      scratch_pool));
  if (!locked)
    return svn_error_createf(SVN_ERR_WC_NOT_LOCKED, ((void*)0),
                             _("No write-lock in '%s'"),
                             svn_dirent_local_style(local_abspath,
                                                    scratch_pool));

  return SVN_NO_ERROR;
}
