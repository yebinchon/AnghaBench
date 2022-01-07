
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_wc_adm_access_t ;
typedef int svn_revnum_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int * svn_wc_add_repos_file2 (char const*,int *,char const*,int *,int *,int *,char const*,int ,int *) ;

svn_error_t *
svn_wc_add_repos_file(const char *dst_path,
                      svn_wc_adm_access_t *adm_access,
                      const char *new_text_path,
                      apr_hash_t *new_props,
                      const char *copyfrom_url,
                      svn_revnum_t copyfrom_rev,
                      apr_pool_t *pool)
{
  return svn_wc_add_repos_file2(dst_path, adm_access,
                                new_text_path, ((void*)0),
                                new_props, ((void*)0),
                                copyfrom_url, copyfrom_rev,
                                pool);
}
