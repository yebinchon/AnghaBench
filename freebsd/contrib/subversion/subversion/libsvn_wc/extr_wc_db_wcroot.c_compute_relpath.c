
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int abspath; } ;
typedef TYPE_1__ svn_wc__db_wcroot_t ;
typedef int apr_pool_t ;


 char* svn_dirent_is_child (int ,char const*,int *) ;

__attribute__((used)) static const char *
compute_relpath(const svn_wc__db_wcroot_t *wcroot,
                const char *local_abspath,
                apr_pool_t *result_pool)
{
  const char *relpath = svn_dirent_is_child(wcroot->abspath, local_abspath,
                                            result_pool);
  if (relpath == ((void*)0))
    return "";
  return relpath;
}
