
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_pool_t ;


 int ADM_LOCK ;
 int SVN_VA_NULL ;
 char const* svn_dirent_join_many (int *,char const*,int ,int ,int ) ;
 int svn_wc_get_adm_dir (int *) ;

__attribute__((used)) static const char *
build_lockfile_path(const char *local_dir_abspath,
                    apr_pool_t *result_pool)
{
  return svn_dirent_join_many(result_pool,
                              local_dir_abspath,
                              svn_wc_get_adm_dir(result_pool),
                              ADM_LOCK,
                              SVN_VA_NULL);
}
