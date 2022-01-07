
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_wc_adm_access_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int * svn_wc_adm_access_pool (int *) ;
 int * svn_wc_adm_close2 (int *,int *) ;

svn_error_t *
svn_wc_adm_close(svn_wc_adm_access_t *adm_access)
{

  apr_pool_t *scratch_pool = svn_wc_adm_access_pool(adm_access);

  return svn_wc_adm_close2(adm_access, scratch_pool);
}
