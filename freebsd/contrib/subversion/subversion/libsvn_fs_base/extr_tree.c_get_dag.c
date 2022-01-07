
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int trail_t ;
typedef int svn_fs_root_t ;
typedef int svn_error_t ;
struct TYPE_3__ {int * node; } ;
typedef TYPE_1__ parent_path_t ;
typedef int dag_node_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int * dag_node_cache_get (int *,char const*,int *) ;
 int open_path (TYPE_1__**,int *,char const*,int ,int *,int *,int *) ;
 char* svn_fs__canonicalize_abspath (char const*,int *) ;

__attribute__((used)) static svn_error_t *
get_dag(dag_node_t **dag_node_p,
        svn_fs_root_t *root,
        const char *path,
        trail_t *trail,
        apr_pool_t *pool)
{
  parent_path_t *parent_path;
  dag_node_t *node = ((void*)0);


  path = svn_fs__canonicalize_abspath(path, pool);


  node = dag_node_cache_get(root, path, pool);
  if (! node)
    {


      SVN_ERR(open_path(&parent_path, root, path, 0, ((void*)0), trail, pool));
      node = parent_path->node;


    }

  *dag_node_p = node;
  return SVN_NO_ERROR;
}
