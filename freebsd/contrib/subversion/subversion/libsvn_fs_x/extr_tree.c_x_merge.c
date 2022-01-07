
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


struct TYPE_18__ {char* data; } ;
typedef TYPE_1__ svn_stringbuf_t ;
typedef int svn_fs_txn_t ;
struct TYPE_19__ {int txn; int fs; int is_txn_root; } ;
typedef TYPE_2__ svn_fs_root_t ;
struct TYPE_20__ {scalar_t__ apr_err; } ;
typedef TYPE_3__ svn_error_t ;
typedef int dag_node_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 scalar_t__ SVN_ERR_FS_CONFLICT ;
 int SVN_ERR_FS_CORRUPT ;
 TYPE_3__* SVN_FS__NOT_TXN (TYPE_2__*) ;
 TYPE_3__* SVN_NO_ERROR ;
 int _ (char*) ;
 int get_root (int **,TYPE_2__*,int *,int *) ;
 TYPE_3__* merge_changes (int *,int *,int *,TYPE_1__*,int *) ;
 TYPE_3__* svn_error_create (int ,int *,int ) ;
 TYPE_3__* svn_error_trace (TYPE_3__*) ;
 int svn_fs_x__open_txn (int **,int ,int ,int *) ;
 TYPE_1__* svn_stringbuf_create_empty (int *) ;

__attribute__((used)) static svn_error_t *
x_merge(const char **conflict_p,
        svn_fs_root_t *source_root,
        const char *source_path,
        svn_fs_root_t *target_root,
        const char *target_path,
        svn_fs_root_t *ancestor_root,
        const char *ancestor_path,
        apr_pool_t *pool)
{
  dag_node_t *source, *ancestor;
  svn_fs_txn_t *txn;
  svn_error_t *err;
  svn_stringbuf_t *conflict = svn_stringbuf_create_empty(pool);

  if (! target_root->is_txn_root)
    return SVN_FS__NOT_TXN(target_root);


  if ((source_root->fs != ancestor_root->fs)
      || (target_root->fs != ancestor_root->fs))
    {
      return svn_error_create
        (SVN_ERR_FS_CORRUPT, ((void*)0),
         _("Bad merge; ancestor, source, and target not all in same fs"));
    }
  SVN_ERR(get_root(&ancestor, ancestor_root, pool, pool));


  SVN_ERR(get_root(&source, source_root, pool, pool));


  SVN_ERR(svn_fs_x__open_txn(&txn, ancestor_root->fs, target_root->txn,
                             pool));


  err = merge_changes(ancestor, source, txn, conflict, pool);
  if (err)
    {
      if ((err->apr_err == SVN_ERR_FS_CONFLICT) && conflict_p)
        *conflict_p = conflict->data;
      return svn_error_trace(err);
    }

  return SVN_NO_ERROR;
}
