
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_wc_adm_access_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR_WC_PATH_FOUND ;
 int _ (char*) ;
 int svn_dirent_local_style (char const*,int *) ;
 int * svn_error_createf (int ,int *,int ,int ) ;

svn_error_t *
svn_wc_mark_missing_deleted(const char *path,
                            svn_wc_adm_access_t *parent,
                            apr_pool_t *pool)
{

  return svn_error_createf(SVN_ERR_WC_PATH_FOUND, ((void*)0),
                           _("Unexpectedly found '%s': "
                             "path is marked 'missing'"),
                           svn_dirent_local_style(path, pool));
}
