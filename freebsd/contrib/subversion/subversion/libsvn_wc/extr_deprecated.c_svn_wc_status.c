
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_wc_status_t ;
typedef int svn_wc_status2_t ;
typedef int svn_wc_adm_access_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int svn_wc_status2 (int **,char const*,int *,int *) ;

svn_error_t *
svn_wc_status(svn_wc_status_t **status,
              const char *path,
              svn_wc_adm_access_t *adm_access,
              apr_pool_t *pool)
{
  svn_wc_status2_t *stat2;

  SVN_ERR(svn_wc_status2(&stat2, path, adm_access, pool));
  *status = (svn_wc_status_t *) stat2;
  return SVN_NO_ERROR;
}
