
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_fs_t ;
struct TYPE_4__ {int * fs; } ;
typedef TYPE_1__ svn_fs_root_t ;
struct TYPE_5__ {int kind; int id; } ;
typedef TYPE_2__ svn_fs_dirent_t ;
typedef int svn_error_t ;
struct node_kind_args {char const* path; int kind; int id; TYPE_1__* root; int ** table_p; } ;
struct dir_entries_args {char const* path; int kind; int id; TYPE_1__* root; int ** table_p; } ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_hash_index_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int * apr_hash_first (int *,int *) ;
 int * apr_hash_next (int *) ;
 int apr_hash_this (int *,int *,int *,void**) ;
 int svn_fs_base__retry_txn (int *,int ,struct node_kind_args*,int ,int *) ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 int txn_body_dir_entries ;
 int txn_body_node_kind ;

__attribute__((used)) static svn_error_t *
base_dir_entries(apr_hash_t **table_p,
                 svn_fs_root_t *root,
                 const char *path,
                 apr_pool_t *pool)
{
  struct dir_entries_args args;
  apr_pool_t *iterpool;
  apr_hash_t *table;
  svn_fs_t *fs = root->fs;
  apr_hash_index_t *hi;

  args.table_p = &table;
  args.root = root;
  args.path = path;
  SVN_ERR(svn_fs_base__retry_txn(root->fs, txn_body_dir_entries, &args,
                                 FALSE, pool));

  iterpool = svn_pool_create(pool);


  for (hi = apr_hash_first(pool, table); hi; hi = apr_hash_next(hi))
    {
      svn_fs_dirent_t *entry;
      struct node_kind_args nk_args;
      void *val;

      svn_pool_clear(iterpool);



      apr_hash_this(hi, ((void*)0), ((void*)0), &val);
      entry = val;
      nk_args.id = entry->id;




      SVN_ERR(svn_fs_base__retry_txn(fs, txn_body_node_kind, &nk_args,
                                     FALSE, iterpool));
      entry->kind = nk_args.kind;
    }

  svn_pool_destroy(iterpool);

  *table_p = table;
  return SVN_NO_ERROR;
}
