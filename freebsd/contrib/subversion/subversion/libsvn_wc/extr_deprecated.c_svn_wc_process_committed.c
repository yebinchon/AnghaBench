
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_wc_adm_access_t ;
typedef int svn_revnum_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_array_header_t ;


 int FALSE ;
 int * svn_wc_process_committed2 (char const*,int *,int ,int ,char const*,char const*,int const*,int ,int *) ;

svn_error_t *
svn_wc_process_committed(const char *path,
                         svn_wc_adm_access_t *adm_access,
                         svn_boolean_t recurse,
                         svn_revnum_t new_revnum,
                         const char *rev_date,
                         const char *rev_author,
                         const apr_array_header_t *wcprop_changes,
                         apr_pool_t *pool)
{
  return svn_wc_process_committed2(path, adm_access, recurse, new_revnum,
                                   rev_date, rev_author, wcprop_changes,
                                   FALSE, pool);
}
