
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef int svn_fs_txn_t ;
typedef int svn_fs_t ;
struct TYPE_17__ {int txn; int * fs; int is_txn_root; } ;
typedef TYPE_1__ svn_fs_root_t ;
struct TYPE_18__ {scalar_t__ apr_err; } ;
typedef TYPE_2__ svn_error_t ;
struct merge_args {TYPE_3__* conflict; int * txn; int * ancestor_node; int * source_node; int * node; TYPE_1__* root; } ;
struct get_root_args {TYPE_3__* conflict; int * txn; int * ancestor_node; int * source_node; int * node; TYPE_1__* root; } ;
typedef int dag_node_t ;
typedef int apr_pool_t ;
struct TYPE_19__ {char* data; } ;


 int FALSE ;
 int SVN_ERR (TYPE_2__*) ;
 scalar_t__ SVN_ERR_FS_CONFLICT ;
 int SVN_ERR_FS_CORRUPT ;
 TYPE_2__* SVN_FS__NOT_TXN (TYPE_1__*) ;
 TYPE_2__* SVN_NO_ERROR ;
 int _ (char*) ;
 TYPE_2__* svn_error_create (int ,int *,int ) ;
 TYPE_2__* svn_error_trace (TYPE_2__*) ;
 TYPE_2__* svn_fs_base__open_txn (int **,int *,int ,int *) ;
 TYPE_2__* svn_fs_base__retry_txn (int *,int ,struct merge_args*,int ,int *) ;
 TYPE_3__* svn_stringbuf_create_empty (int *) ;
 int txn_body_get_root ;
 int txn_body_merge ;

__attribute__((used)) static svn_error_t *
base_merge(const char **conflict_p,
           svn_fs_root_t *source_root,
           const char *source_path,
           svn_fs_root_t *target_root,
           const char *target_path,
           svn_fs_root_t *ancestor_root,
           const char *ancestor_path,
           apr_pool_t *pool)
{
  dag_node_t *source, *ancestor;
  struct get_root_args get_root_args;
  struct merge_args merge_args;
  svn_fs_txn_t *txn;
  svn_error_t *err;
  svn_fs_t *fs;

  if (! target_root->is_txn_root)
    return SVN_FS__NOT_TXN(target_root);


  fs = ancestor_root->fs;
  if ((source_root->fs != fs) || (target_root->fs != fs))
    {
      return svn_error_create
        (SVN_ERR_FS_CORRUPT, ((void*)0),
         _("Bad merge; ancestor, source, and target not all in same fs"));
    }
  get_root_args.root = ancestor_root;
  SVN_ERR(svn_fs_base__retry_txn(fs, txn_body_get_root, &get_root_args,
                                 FALSE, pool));
  ancestor = get_root_args.node;


  get_root_args.root = source_root;
  SVN_ERR(svn_fs_base__retry_txn(fs, txn_body_get_root, &get_root_args,
                                 FALSE, pool));
  source = get_root_args.node;


  SVN_ERR(svn_fs_base__open_txn(&txn, fs, target_root->txn, pool));


  merge_args.source_node = source;
  merge_args.ancestor_node = ancestor;
  merge_args.txn = txn;
  merge_args.conflict = svn_stringbuf_create_empty(pool);
  err = svn_fs_base__retry_txn(fs, txn_body_merge, &merge_args, FALSE, pool);
  if (err)
    {
      if ((err->apr_err == SVN_ERR_FS_CONFLICT) && conflict_p)
        *conflict_p = merge_args.conflict->data;
      return svn_error_trace(err);
    }

  return SVN_NO_ERROR;
}
