
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int uuid; } ;
typedef TYPE_1__ svn_fs_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int * SVN_NO_ERROR ;
 char* apr_pstrdup (int *,int ) ;

svn_error_t *
svn_fs_get_uuid(svn_fs_t *fs, const char **uuid, apr_pool_t *pool)
{

  *uuid = apr_pstrdup(pool, fs->uuid);
  return SVN_NO_ERROR;
}
