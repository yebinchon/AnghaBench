
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_revnum_t ;
typedef int svn_fs_t ;
typedef int svn_error_t ;
struct TYPE_4__ {char* created_path; int * fresh_root_predecessor_id; int kind; int * node_pool; int id; int * fs; } ;
typedef TYPE_1__ dag_node_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 TYPE_1__* apr_pcalloc (int *,int) ;
 int svn_fs_fs__rev_get_root (int *,int *,int ,int *,int *) ;
 int svn_node_dir ;

svn_error_t *
svn_fs_fs__dag_revision_root(dag_node_t **node_p,
                             svn_fs_t *fs,
                             svn_revnum_t rev,
                             apr_pool_t *pool)
{
  dag_node_t *new_node;


  new_node = apr_pcalloc(pool, sizeof(*new_node));
  new_node->fs = fs;
  SVN_ERR(svn_fs_fs__rev_get_root(&new_node->id, fs, rev, pool, pool));


  new_node->node_pool = pool;


  new_node->kind = svn_node_dir;
  new_node->created_path = "/";
  new_node->fresh_root_predecessor_id = ((void*)0);


  *node_p = new_node;
  return SVN_NO_ERROR;
}
