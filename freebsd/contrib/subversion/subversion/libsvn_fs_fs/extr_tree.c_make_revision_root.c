
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_revnum_t ;
typedef int svn_fs_t ;
struct TYPE_4__ {int * fsap_data; int rev; int is_txn_root; } ;
typedef TYPE_1__ svn_fs_root_t ;
typedef int dag_node_t ;
typedef int apr_pool_t ;


 int FALSE ;
 TYPE_1__* make_root (int *,int *) ;

__attribute__((used)) static svn_fs_root_t *
make_revision_root(svn_fs_t *fs,
                   svn_revnum_t rev,
                   dag_node_t *root_dir,
                   apr_pool_t *pool)
{
  svn_fs_root_t *root = make_root(fs, pool);

  root->is_txn_root = FALSE;
  root->rev = rev;
  root->fsap_data = root_dir;

  return root;
}
