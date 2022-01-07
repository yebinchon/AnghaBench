
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int path; } ;
typedef TYPE_1__ svn_fs_t ;
typedef int svn_error_t ;
typedef int svn_cancel_func_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int * bdb_recover (int ,int ,int *) ;

__attribute__((used)) static svn_error_t *
base_bdb_recover(svn_fs_t *fs,
                 svn_cancel_func_t cancel_func, void *cancel_baton,
                 apr_pool_t *pool)
{


  return bdb_recover(fs->path, FALSE, pool);
}
