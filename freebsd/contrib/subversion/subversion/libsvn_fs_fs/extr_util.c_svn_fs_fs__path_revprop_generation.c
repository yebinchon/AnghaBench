
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int path; } ;
typedef TYPE_1__ svn_fs_t ;
typedef int apr_pool_t ;


 int PATH_REVPROP_GENERATION ;
 char const* svn_dirent_join (int ,int ,int *) ;

const char *
svn_fs_fs__path_revprop_generation(svn_fs_t *fs,
                                   apr_pool_t *pool)
{
  return svn_dirent_join(fs->path, PATH_REVPROP_GENERATION, pool);
}
