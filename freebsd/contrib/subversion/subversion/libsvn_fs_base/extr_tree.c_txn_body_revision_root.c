
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pool; int fs; } ;
typedef TYPE_1__ trail_t ;
typedef int svn_fs_root_t ;
typedef int svn_error_t ;
struct revision_root_args {int ** root_p; int rev; } ;
typedef int dag_node_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int * make_revision_root (int ,int ,int *,int ) ;
 int svn_fs_base__dag_revision_root (int **,int ,int ,TYPE_1__*,int ) ;

__attribute__((used)) static svn_error_t *
txn_body_revision_root(void *baton,
                       trail_t *trail)
{
  struct revision_root_args *args = baton;
  dag_node_t *root_dir;
  svn_fs_root_t *root;

  SVN_ERR(svn_fs_base__dag_revision_root(&root_dir, trail->fs, args->rev,
                                         trail, trail->pool));
  root = make_revision_root(trail->fs, args->rev, root_dir, trail->pool);

  *args->root_p = root;
  return SVN_NO_ERROR;
}
