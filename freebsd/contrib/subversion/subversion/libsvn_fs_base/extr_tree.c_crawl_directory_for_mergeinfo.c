
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_fs_t ;
typedef int svn_fs_mergeinfo_receiver_t ;
typedef int svn_error_t ;
struct get_mergeinfo_data_and_entries_baton {char const* node_path; void* receiver_baton; int receiver; int * node; int * children_atop_mergeinfo_trees; } ;
typedef int dag_node_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_hash_index_t ;


 int FALSE ;
 int SVN_ERR (int *) ;
 int * SVN_NO_ERROR ;
 scalar_t__ apr_hash_count (int *) ;
 int * apr_hash_first (int *,int *) ;
 int * apr_hash_make (int *) ;
 int * apr_hash_next (int *) ;
 int apr_hash_this (int *,void const**,int *,void**) ;
 int * svn_fs_base__retry_txn (int *,int ,struct get_mergeinfo_data_and_entries_baton*,int ,int *) ;
 char* svn_fspath__join (char const*,void const*,int *) ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 int txn_body_get_mergeinfo_data_and_entries ;

__attribute__((used)) static svn_error_t *
crawl_directory_for_mergeinfo(svn_fs_t *fs,
                              dag_node_t *node,
                              const char *node_path,
                              svn_fs_mergeinfo_receiver_t receiver,
                              void *baton,
                              apr_pool_t *pool)
{
  struct get_mergeinfo_data_and_entries_baton gmdae_args;
  apr_hash_t *children_atop_mergeinfo_trees = apr_hash_make(pool);
  apr_hash_index_t *hi;
  apr_pool_t *iterpool;



  gmdae_args.children_atop_mergeinfo_trees = children_atop_mergeinfo_trees;
  gmdae_args.node = node;
  gmdae_args.node_path = node_path;
  gmdae_args.receiver = receiver;
  gmdae_args.receiver_baton = baton;
  SVN_ERR(svn_fs_base__retry_txn(fs, txn_body_get_mergeinfo_data_and_entries,
                                 &gmdae_args, FALSE, pool));




  if (apr_hash_count(children_atop_mergeinfo_trees) == 0)
    return SVN_NO_ERROR;

  iterpool = svn_pool_create(pool);
  for (hi = apr_hash_first(pool, children_atop_mergeinfo_trees);
       hi;
       hi = apr_hash_next(hi))
    {
      const void *key;
      void *val;
      svn_pool_clear(iterpool);
      apr_hash_this(hi, &key, ((void*)0), &val);
      SVN_ERR(crawl_directory_for_mergeinfo(fs, val,
                                            svn_fspath__join(node_path, key,
                                                             iterpool),
                                            receiver, baton, iterpool));
    }
  svn_pool_destroy(iterpool);
  return SVN_NO_ERROR;
}
