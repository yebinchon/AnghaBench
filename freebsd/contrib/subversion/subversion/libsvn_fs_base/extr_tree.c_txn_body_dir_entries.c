
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int pool; } ;
typedef TYPE_1__ trail_t ;
typedef int svn_error_t ;
struct dir_entries_args {int ** table_p; int path; int root; } ;
typedef int dag_node_t ;
typedef int apr_hash_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int * apr_hash_make (int ) ;
 int get_dag (int **,int ,int ,TYPE_1__*,int ) ;
 int svn_fs_base__dag_dir_entries (int **,int *,TYPE_1__*,int ) ;

__attribute__((used)) static svn_error_t *
txn_body_dir_entries(void *baton,
                     trail_t *trail)
{
  struct dir_entries_args *args = baton;
  dag_node_t *node;
  apr_hash_t *entries;

  SVN_ERR(get_dag(&node, args->root, args->path, trail, trail->pool));


  SVN_ERR(svn_fs_base__dag_dir_entries(&entries, node, trail, trail->pool));


  *args->table_p = entries ? entries : apr_hash_make(trail->pool);
  return SVN_NO_ERROR;
}
