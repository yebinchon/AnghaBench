
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_fs_root_t ;
typedef int svn_error_t ;
struct TYPE_3__ {int * node; } ;
typedef TYPE_1__ parent_path_t ;
typedef int dag_node_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int dag_node_cache_get (int **,int *,char const*,int *) ;
 int open_path (TYPE_1__**,int *,char const*,int,int ,int *) ;
 int open_path_node_only ;
 int open_path_uncached ;
 char* svn_fs__canonicalize_abspath (char const*,int *) ;
 int svn_fs__is_canonical_abspath (char const*) ;

__attribute__((used)) static svn_error_t *
get_dag(dag_node_t **dag_node_p,
        svn_fs_root_t *root,
        const char *path,
        apr_pool_t *pool)
{
  parent_path_t *parent_path;
  dag_node_t *node = ((void*)0);



  if (*path == '/')
    SVN_ERR(dag_node_cache_get(&node, root, path, pool));

  if (! node)
    {






      if (*path != '/' || !svn_fs__is_canonical_abspath(path))
        {
          path = svn_fs__canonicalize_abspath(path, pool);
          SVN_ERR(dag_node_cache_get(&node, root, path, pool));
        }

      if (! node)
        {


          SVN_ERR(open_path(&parent_path, root, path,
                            open_path_uncached | open_path_node_only,
                            FALSE, pool));
          node = parent_path->node;


        }
    }

  *dag_node_p = node;
  return SVN_NO_ERROR;
}
