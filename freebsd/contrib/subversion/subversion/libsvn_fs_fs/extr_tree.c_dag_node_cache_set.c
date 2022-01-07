
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_fs_root_t ;
typedef int svn_error_t ;
typedef int svn_cache__t ;
typedef int dag_node_t ;
typedef int apr_pool_t ;


 int SVN_ERR_ASSERT (int) ;
 int locate_cache (int **,char const**,int *,char const*,int *) ;
 int * svn_cache__set (int *,char const*,int *,int *) ;

__attribute__((used)) static svn_error_t *
dag_node_cache_set(svn_fs_root_t *root,
                   const char *path,
                   dag_node_t *node,
                   apr_pool_t *pool)
{
  svn_cache__t *cache;
  const char *key;

  SVN_ERR_ASSERT(*path == '/');

  locate_cache(&cache, &key, root, path, pool);
  return svn_cache__set(cache, key, node, pool);
}
