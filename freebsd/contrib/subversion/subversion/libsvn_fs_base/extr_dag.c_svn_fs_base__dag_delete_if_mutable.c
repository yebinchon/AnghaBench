
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int trail_t ;
typedef int svn_fs_t ;
typedef int svn_fs_id_t ;
struct TYPE_6__ {int * id; } ;
typedef TYPE_1__ svn_fs_dirent_t ;
typedef int svn_error_t ;
struct TYPE_7__ {scalar_t__ kind; } ;
typedef TYPE_2__ dag_node_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_hash_index_t ;


 int SVN_ERR (int *) ;
 int * SVN_NO_ERROR ;
 int * apr_hash_first (int *,int *) ;
 int * apr_hash_next (int *) ;
 int apr_hash_this (int *,int *,int *,void**) ;
 int svn_fs_base__dag_check_mutable (TYPE_2__*,char const*) ;
 int * svn_fs_base__dag_dir_entries (int **,TYPE_2__*,int *,int *) ;
 int * svn_fs_base__dag_get_node (TYPE_2__**,int *,int const*,int *,int *) ;
 int * svn_fs_base__dag_remove_node (int *,int const*,char const*,int *,int *) ;
 scalar_t__ svn_node_dir ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;

svn_error_t *
svn_fs_base__dag_delete_if_mutable(svn_fs_t *fs,
                                   const svn_fs_id_t *id,
                                   const char *txn_id,
                                   trail_t *trail,
                                   apr_pool_t *pool)
{
  dag_node_t *node;


  SVN_ERR(svn_fs_base__dag_get_node(&node, fs, id, trail, pool));


  if (! svn_fs_base__dag_check_mutable(node, txn_id))
    return SVN_NO_ERROR;


  if (node->kind == svn_node_dir)
    {
      apr_hash_t *entries;
      apr_hash_index_t *hi;


      SVN_ERR(svn_fs_base__dag_dir_entries(&entries, node, trail, pool));
      if (entries)
        {
          apr_pool_t *subpool = svn_pool_create(pool);
          for (hi = apr_hash_first(pool, entries);
               hi;
               hi = apr_hash_next(hi))
            {
              void *val;
              svn_fs_dirent_t *dirent;

              svn_pool_clear(subpool);
              apr_hash_this(hi, ((void*)0), ((void*)0), &val);
              dirent = val;
              SVN_ERR(svn_fs_base__dag_delete_if_mutable(fs, dirent->id,
                                                         txn_id, trail,
                                                         subpool));
            }
          svn_pool_destroy(subpool);
        }
    }



  return svn_fs_base__dag_remove_node(fs, id, txn_id, trail, pool);
}
