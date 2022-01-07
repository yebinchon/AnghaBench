
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_wc_adm_access_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int do_close (int *,int ,int *) ;
 int * svn_error_trace (int ) ;

svn_error_t *
svn_wc_adm_close2(svn_wc_adm_access_t *adm_access, apr_pool_t *scratch_pool)
{
  return svn_error_trace(do_close(adm_access, FALSE, scratch_pool));
}
