
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_3__* fs; int rev; int is_txn_root; } ;
typedef TYPE_1__ svn_fs_root_t ;
typedef int svn_error_t ;
typedef int svn_cache__t ;
typedef scalar_t__ svn_boolean_t ;
struct TYPE_7__ {int dag_node_cache; } ;
typedef TYPE_2__ fs_fs_data_t ;
typedef int dag_node_t ;
typedef int apr_pool_t ;
struct TYPE_8__ {TYPE_2__* fsap_data; } ;


 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int) ;
 int * SVN_NO_ERROR ;
 int cache_insert (int ,int ,char const*,int *) ;
 int * cache_lookup (int ,int ,char const*) ;
 int locate_cache (int **,char const**,TYPE_1__*,char const*,int *) ;
 int svn_cache__get (void**,scalar_t__*,int *,char const*,int *) ;
 int * svn_fs_fs__dag_dup (int *,int *) ;
 int svn_fs_fs__dag_set_fs (int *,TYPE_3__*) ;

__attribute__((used)) static svn_error_t *
dag_node_cache_get(dag_node_t **node_p,
                   svn_fs_root_t *root,
                   const char *path,
                   apr_pool_t *pool)
{
  svn_boolean_t found;
  dag_node_t *node = ((void*)0);
  svn_cache__t *cache;
  const char *key;

  SVN_ERR_ASSERT(*path == '/');

  if (!root->is_txn_root)
    {


      fs_fs_data_t *ffd = root->fs->fsap_data;

      node = cache_lookup(ffd->dag_node_cache, root->rev, path);
      if (node == ((void*)0))
        {
          locate_cache(&cache, &key, root, path, pool);
          SVN_ERR(svn_cache__get((void **)&node, &found, cache, key, pool));
          if (found && node)
            {


              svn_fs_fs__dag_set_fs(node, root->fs);


              cache_insert(ffd->dag_node_cache, root->rev, path, node);
            }
        }
      else
        {

          node = svn_fs_fs__dag_dup(node, pool);
        }
    }
  else
    {


      locate_cache(&cache, &key, root, path, pool);

      SVN_ERR(svn_cache__get((void **) &node, &found, cache, key, pool));
      if (found && node)
        {


          svn_fs_fs__dag_set_fs(node, root->fs);
        }
    }

  *node_p = node;

  return SVN_NO_ERROR;
}
