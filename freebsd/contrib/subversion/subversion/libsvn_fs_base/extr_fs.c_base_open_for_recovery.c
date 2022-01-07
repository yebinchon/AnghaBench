
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_mutex__t ;
struct TYPE_3__ {int pool; int path; } ;
typedef TYPE_1__ svn_fs_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int * SVN_NO_ERROR ;
 int apr_pstrdup (int ,char const*) ;

__attribute__((used)) static svn_error_t *
base_open_for_recovery(svn_fs_t *fs,
                       const char *path,
                       svn_mutex__t *common_pool_lock,
                       apr_pool_t *pool,
                       apr_pool_t *common_pool)
{

  fs->path = apr_pstrdup(fs->pool, path);

  return SVN_NO_ERROR;
}
