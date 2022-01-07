
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int fs; int is_txn_root; TYPE_2__* fsap_data; } ;
typedef TYPE_1__ svn_fs_root_t ;
typedef int svn_fs_id_t ;
typedef int svn_error_t ;
struct node_id_args {char const* path; TYPE_1__* root; int const** id_p; } ;
struct TYPE_5__ {int root_dir; } ;
typedef TYPE_2__ base_root_data_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int svn_fs_base__dag_get_id (int ) ;
 int * svn_fs_base__id_copy (int ,int *) ;
 int svn_fs_base__retry_txn (int ,int ,struct node_id_args*,int ,int *) ;
 int txn_body_node_id ;

__attribute__((used)) static svn_error_t *
base_node_id(const svn_fs_id_t **id_p,
             svn_fs_root_t *root,
             const char *path,
             apr_pool_t *pool)
{
  base_root_data_t *brd = root->fsap_data;

  if (! root->is_txn_root
      && (path[0] == '\0' || ((path[0] == '/') && (path[1] == '\0'))))
    {




      *id_p = svn_fs_base__id_copy(svn_fs_base__dag_get_id(brd->root_dir),
                                   pool);
    }
  else
    {
      const svn_fs_id_t *id;
      struct node_id_args args;

      args.id_p = &id;
      args.root = root;
      args.path = path;

      SVN_ERR(svn_fs_base__retry_txn(root->fs, txn_body_node_id, &args,
                                     FALSE, pool));
      *id_p = id;
    }
  return SVN_NO_ERROR;
}
