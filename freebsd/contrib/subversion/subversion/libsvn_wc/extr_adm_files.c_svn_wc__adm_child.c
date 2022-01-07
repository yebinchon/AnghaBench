
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_pool_t ;


 int SVN_VA_NULL ;
 int adm_dir_name ;
 char const* svn_dirent_join_many (int *,char const*,int ,char const*,int ) ;

const char *
svn_wc__adm_child(const char *path,
                  const char *child,
                  apr_pool_t *result_pool)
{
  return svn_dirent_join_many(result_pool,
                              path,
                              adm_dir_name,
                              child,
                              SVN_VA_NULL);
}
