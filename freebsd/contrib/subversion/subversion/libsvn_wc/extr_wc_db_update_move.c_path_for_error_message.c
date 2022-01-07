
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int abspath; } ;
typedef TYPE_1__ svn_wc__db_wcroot_t ;
typedef int apr_pool_t ;


 char* svn_dirent_join (int ,char const*,int *) ;
 char const* svn_dirent_local_style (char const*,int *) ;

__attribute__((used)) static const char *
path_for_error_message(const svn_wc__db_wcroot_t *wcroot,
                       const char *local_relpath,
                       apr_pool_t *result_pool)
{
  const char *local_abspath
    = svn_dirent_join(wcroot->abspath, local_relpath, result_pool);

  return svn_dirent_local_style(local_abspath, result_pool);
}
