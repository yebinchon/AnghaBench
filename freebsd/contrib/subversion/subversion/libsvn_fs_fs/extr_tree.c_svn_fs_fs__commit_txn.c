
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_30__ TYPE_5__ ;
typedef struct TYPE_29__ TYPE_4__ ;
typedef struct TYPE_28__ TYPE_3__ ;
typedef struct TYPE_27__ TYPE_2__ ;
typedef struct TYPE_26__ TYPE_1__ ;


struct TYPE_26__ {char* data; } ;
typedef TYPE_1__ svn_stringbuf_t ;
typedef scalar_t__ svn_revnum_t ;
struct TYPE_27__ {scalar_t__ base_rev; TYPE_3__* fs; } ;
typedef TYPE_2__ svn_fs_txn_t ;
struct TYPE_28__ {TYPE_5__* fsap_data; } ;
typedef TYPE_3__ svn_fs_t ;
typedef int svn_fs_root_t ;
struct TYPE_29__ {scalar_t__ apr_err; } ;
typedef TYPE_4__ svn_error_t ;
struct TYPE_30__ {scalar_t__ pack_after_commit; } ;
typedef TYPE_5__ fs_fs_data_t ;
typedef int dag_node_t ;
typedef int apr_pool_t ;


 int SVN_ERR (TYPE_4__*) ;
 scalar_t__ SVN_ERR_FS_CONFLICT ;
 scalar_t__ SVN_ERR_FS_TXN_OUT_OF_DATE ;
 scalar_t__ SVN_INVALID_REVNUM ;
 TYPE_4__* SVN_NO_ERROR ;
 TYPE_4__* get_root (int **,int *,int *) ;
 TYPE_4__* merge_changes (int *,int *,TYPE_2__*,TYPE_1__*,int *) ;
 int svn_error_clear (TYPE_4__*) ;
 TYPE_4__* svn_fs_fs__commit (scalar_t__*,TYPE_3__*,TYPE_2__*,int *) ;
 TYPE_4__* svn_fs_fs__pack (TYPE_3__*,int ,int *,int *,int *,int *,int *) ;
 int svn_fs_fs__reset_txn_caches (TYPE_3__*) ;
 TYPE_4__* svn_fs_fs__revision_root (int **,TYPE_3__*,scalar_t__,int *) ;
 TYPE_4__* svn_fs_fs__youngest_rev (scalar_t__*,TYPE_3__*,int *) ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 TYPE_1__* svn_stringbuf_create_empty (int *) ;

svn_error_t *
svn_fs_fs__commit_txn(const char **conflict_p,
                      svn_revnum_t *new_rev,
                      svn_fs_txn_t *txn,
                      apr_pool_t *pool)
{
  svn_error_t *err = SVN_NO_ERROR;
  svn_stringbuf_t *conflict = svn_stringbuf_create_empty(pool);
  svn_fs_t *fs = txn->fs;
  fs_fs_data_t *ffd = fs->fsap_data;





  apr_pool_t *iterpool = svn_pool_create(pool);


  *new_rev = SVN_INVALID_REVNUM;
  if (conflict_p)
    *conflict_p = ((void*)0);

  while (1729)
    {
      svn_revnum_t youngish_rev;
      svn_fs_root_t *youngish_root;
      dag_node_t *youngish_root_node;

      svn_pool_clear(iterpool);





      SVN_ERR(svn_fs_fs__youngest_rev(&youngish_rev, fs, iterpool));
      SVN_ERR(svn_fs_fs__revision_root(&youngish_root, fs, youngish_rev,
                                       iterpool));
      SVN_ERR(get_root(&youngish_root_node, youngish_root, iterpool));





      err = merge_changes(((void*)0), youngish_root_node, txn, conflict, iterpool);
      if (err)
        {
          if ((err->apr_err == SVN_ERR_FS_CONFLICT) && conflict_p)
            *conflict_p = conflict->data;
          goto cleanup;
        }
      txn->base_rev = youngish_rev;


      err = svn_fs_fs__commit(new_rev, fs, txn, iterpool);
      if (err && (err->apr_err == SVN_ERR_FS_TXN_OUT_OF_DATE))
        {





          svn_revnum_t youngest_rev;
          SVN_ERR(svn_fs_fs__youngest_rev(&youngest_rev, fs, iterpool));
          if (youngest_rev == youngish_rev)
            goto cleanup;
          else
            svn_error_clear(err);
        }
      else if (err)
        {
          goto cleanup;
        }
      else
        {
          err = SVN_NO_ERROR;
          goto cleanup;
        }
    }

 cleanup:

  svn_fs_fs__reset_txn_caches(fs);

  svn_pool_destroy(iterpool);

  SVN_ERR(err);

  if (ffd->pack_after_commit)
    {
      SVN_ERR(svn_fs_fs__pack(fs, 0, ((void*)0), ((void*)0), ((void*)0), ((void*)0), pool));
    }

  return SVN_NO_ERROR;
}
