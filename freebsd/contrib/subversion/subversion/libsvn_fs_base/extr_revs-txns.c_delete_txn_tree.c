
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int svn_fs_t ;
typedef int svn_fs_id_t ;
struct TYPE_8__ {int * id; } ;
typedef TYPE_1__ svn_fs_dirent_t ;
struct TYPE_9__ {scalar_t__ apr_err; } ;
typedef TYPE_2__ svn_error_t ;
struct remove_node_args {char const* txn_id; int const* id; int ** dirents; } ;
struct get_dirents_args {char const* txn_id; int const* id; int ** dirents; } ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_hash_index_t ;


 int FALSE ;
 int SVN_ERR (TYPE_2__*) ;
 scalar_t__ SVN_ERR_FS_ID_NOT_FOUND ;
 TYPE_2__* SVN_NO_ERROR ;
 int TRUE ;
 int * apr_hash_first (int *,int *) ;
 int * apr_hash_next (int *) ;
 int apr_hash_this (int *,int *,int *,void**) ;
 scalar_t__ strcmp (int ,char const*) ;
 int svn_error_clear (TYPE_2__*) ;
 int svn_fs_base__id_txn_id (int const*) ;
 TYPE_2__* svn_fs_base__retry_txn (int *,int ,struct remove_node_args*,int ,int *) ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 int txn_body_get_dirents ;
 int txn_body_remove_node ;

__attribute__((used)) static svn_error_t *
delete_txn_tree(svn_fs_t *fs,
                const svn_fs_id_t *id,
                const char *txn_id,
                apr_pool_t *pool)
{
  struct get_dirents_args dirent_args;
  struct remove_node_args rm_args;
  apr_hash_t *dirents = ((void*)0);
  apr_hash_index_t *hi;
  svn_error_t *err;


  if (strcmp(svn_fs_base__id_txn_id(id), txn_id) != 0)
    return SVN_NO_ERROR;




  dirent_args.dirents = &dirents;
  dirent_args.id = id;
  dirent_args.txn_id = txn_id;
  err = svn_fs_base__retry_txn(fs, txn_body_get_dirents, &dirent_args,
                               FALSE, pool);
  if (err && (err->apr_err == SVN_ERR_FS_ID_NOT_FOUND))
    {
      svn_error_clear(err);
      return SVN_NO_ERROR;
    }
  SVN_ERR(err);


  if (dirents)
    {
      apr_pool_t *subpool = svn_pool_create(pool);


      for (hi = apr_hash_first(pool, dirents); hi; hi = apr_hash_next(hi))
        {
          void *val;
          svn_fs_dirent_t *dirent;

          svn_pool_clear(subpool);
          apr_hash_this(hi, ((void*)0), ((void*)0), &val);
          dirent = val;
          SVN_ERR(delete_txn_tree(fs, dirent->id, txn_id, subpool));
        }
      svn_pool_destroy(subpool);
    }


  rm_args.id = id;
  rm_args.txn_id = txn_id;
  return svn_fs_base__retry_txn(fs, txn_body_remove_node, &rm_args,
                                TRUE, pool);
}
