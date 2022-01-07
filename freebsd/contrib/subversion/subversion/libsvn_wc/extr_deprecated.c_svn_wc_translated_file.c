
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_wc_adm_access_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;


 int SVN_WC_TRANSLATE_FORCE_EOL_REPAIR ;
 int SVN_WC_TRANSLATE_TO_NF ;
 int * svn_wc_translated_file2 (char const**,char const*,char const*,int *,int,int *) ;

svn_error_t *
svn_wc_translated_file(const char **xlated_p,
                       const char *vfile,
                       svn_wc_adm_access_t *adm_access,
                       svn_boolean_t force_repair,
                       apr_pool_t *pool)
{
  return svn_wc_translated_file2(xlated_p, vfile, vfile, adm_access,
                                 SVN_WC_TRANSLATE_TO_NF
                                 | (force_repair ?
                                    SVN_WC_TRANSLATE_FORCE_EOL_REPAIR : 0),
                                 pool);
}
