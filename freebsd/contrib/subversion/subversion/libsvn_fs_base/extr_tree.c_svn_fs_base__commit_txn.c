
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef scalar_t__ svn_revnum_t ;
struct TYPE_14__ {int * fs; } ;
typedef TYPE_1__ svn_fs_txn_t ;
typedef int svn_fs_t ;
typedef int svn_fs_root_t ;
struct TYPE_15__ {scalar_t__ apr_err; } ;
typedef TYPE_2__ svn_error_t ;
struct merge_args {scalar_t__ new_rev; TYPE_1__* txn; TYPE_3__* conflict; int * source_node; int * ancestor_node; int * node; int * root; } ;
struct get_root_args {scalar_t__ new_rev; TYPE_1__* txn; TYPE_3__* conflict; int * source_node; int * ancestor_node; int * node; int * root; } ;
struct commit_args {scalar_t__ new_rev; TYPE_1__* txn; TYPE_3__* conflict; int * source_node; int * ancestor_node; int * node; int * root; } ;
typedef int dag_node_t ;
typedef int apr_pool_t ;
struct TYPE_16__ {char* data; } ;


 int FALSE ;
 int SVN_ERR (TYPE_2__*) ;
 scalar_t__ SVN_ERR_FS_CONFLICT ;
 scalar_t__ SVN_ERR_FS_TXN_OUT_OF_DATE ;
 scalar_t__ SVN_INVALID_REVNUM ;
 TYPE_2__* SVN_NO_ERROR ;
 int svn_error_clear (TYPE_2__*) ;
 TYPE_2__* svn_error_trace (TYPE_2__*) ;
 TYPE_2__* svn_fs_base__retry_txn (int *,int ,struct merge_args*,int ,int *) ;
 TYPE_2__* svn_fs_base__revision_root (int **,int *,scalar_t__,int *) ;
 TYPE_2__* svn_fs_base__youngest_rev (scalar_t__*,int *,int *) ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 TYPE_3__* svn_stringbuf_create_empty (int *) ;
 int txn_body_commit ;
 int txn_body_get_root ;
 int txn_body_merge ;

svn_error_t *
svn_fs_base__commit_txn(const char **conflict_p,
                        svn_revnum_t *new_rev,
                        svn_fs_txn_t *txn,
                        apr_pool_t *pool)
{
  svn_error_t *err;
  svn_fs_t *fs = txn->fs;
  apr_pool_t *subpool = svn_pool_create(pool);


  *new_rev = SVN_INVALID_REVNUM;
  if (conflict_p)
    *conflict_p = ((void*)0);

  while (1729)
    {
      struct get_root_args get_root_args;
      struct merge_args merge_args;
      struct commit_args commit_args;
      svn_revnum_t youngish_rev;
      svn_fs_root_t *youngish_root;
      dag_node_t *youngish_root_node;

      svn_pool_clear(subpool);







      SVN_ERR(svn_fs_base__youngest_rev(&youngish_rev, fs, subpool));
      SVN_ERR(svn_fs_base__revision_root(&youngish_root, fs, youngish_rev,
                                         subpool));
      get_root_args.root = youngish_root;
      SVN_ERR(svn_fs_base__retry_txn(fs, txn_body_get_root, &get_root_args,
                                     FALSE, subpool));
      youngish_root_node = get_root_args.node;





      merge_args.ancestor_node = ((void*)0);
      merge_args.source_node = youngish_root_node;
      merge_args.txn = txn;
      merge_args.conflict = svn_stringbuf_create_empty(pool);
      err = svn_fs_base__retry_txn(fs, txn_body_merge, &merge_args,
                                   FALSE, subpool);
      if (err)
        {
          if ((err->apr_err == SVN_ERR_FS_CONFLICT) && conflict_p)
            *conflict_p = merge_args.conflict->data;
          return svn_error_trace(err);
        }


      commit_args.txn = txn;
      err = svn_fs_base__retry_txn(fs, txn_body_commit, &commit_args,
                                   FALSE, subpool);
      if (err && (err->apr_err == SVN_ERR_FS_TXN_OUT_OF_DATE))
        {





          svn_revnum_t youngest_rev;
          svn_error_t *err2 = svn_fs_base__youngest_rev(&youngest_rev, fs,
                                                        subpool);
          if (err2)
            {
              svn_error_clear(err);
              return svn_error_trace(err2);

            }
          else if (youngest_rev == youngish_rev)
            return svn_error_trace(err);
          else
            svn_error_clear(err);
        }
      else if (err)
        {
          return svn_error_trace(err);
        }
      else
        {

          *new_rev = commit_args.new_rev;
          break;
        }
    }

  svn_pool_destroy(subpool);
  return SVN_NO_ERROR;
}
