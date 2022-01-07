
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* vtable; } ;
typedef TYPE_2__ svn_fs_t ;
struct TYPE_8__ {TYPE_2__* fs; } ;
typedef TYPE_3__ svn_fs_root_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
struct TYPE_6__ {int (* verify_root ) (TYPE_3__*,int *) ;} ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int stub1 (TYPE_3__*,int *) ;

svn_error_t *
svn_fs_verify_root(svn_fs_root_t *root,
                   apr_pool_t *scratch_pool)
{
  svn_fs_t *fs = root->fs;
  SVN_ERR(fs->vtable->verify_root(root, scratch_pool));

  return SVN_NO_ERROR;
}
