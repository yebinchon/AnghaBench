
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_fs_t ;
typedef int svn_error_t ;
struct unlock_proto_rev_baton {int txn_id; int * lockcookie; } ;
struct TYPE_3__ {scalar_t__ being_written; } ;
typedef TYPE_1__ fs_fs_shared_txn_data_t ;
typedef scalar_t__ apr_status_t ;
typedef int apr_pool_t ;
typedef int apr_file_t ;


 scalar_t__ FALSE ;
 int SVN_ERR_FS_CORRUPT ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 scalar_t__ apr_file_close (int *) ;
 scalar_t__ apr_file_unlock (int *) ;
 TYPE_1__* get_shared_txn (int *,int *,scalar_t__) ;
 int * svn_error_createf (int ,int *,int ,int ) ;
 int * svn_error_wrap_apr (scalar_t__,int ,int ) ;
 int svn_fs_fs__id_txn_unparse (int *,int *) ;

__attribute__((used)) static svn_error_t *
unlock_proto_rev_body(svn_fs_t *fs, const void *baton, apr_pool_t *pool)
{
  const struct unlock_proto_rev_baton *b = baton;
  apr_file_t *lockfile = b->lockcookie;
  fs_fs_shared_txn_data_t *txn = get_shared_txn(fs, &b->txn_id, FALSE);
  apr_status_t apr_err;

  if (!txn)
    return svn_error_createf(SVN_ERR_FS_CORRUPT, ((void*)0),
                             _("Can't unlock unknown transaction '%s'"),
                             svn_fs_fs__id_txn_unparse(&b->txn_id, pool));
  if (!txn->being_written)
    return svn_error_createf(SVN_ERR_FS_CORRUPT, ((void*)0),
                             _("Can't unlock nonlocked transaction '%s'"),
                             svn_fs_fs__id_txn_unparse(&b->txn_id, pool));

  apr_err = apr_file_unlock(lockfile);
  if (apr_err)
    return svn_error_wrap_apr
      (apr_err,
       _("Can't unlock prototype revision lockfile for transaction '%s'"),
       svn_fs_fs__id_txn_unparse(&b->txn_id, pool));
  apr_err = apr_file_close(lockfile);
  if (apr_err)
    return svn_error_wrap_apr
      (apr_err,
       _("Can't close prototype revision lockfile for transaction '%s'"),
       svn_fs_fs__id_txn_unparse(&b->txn_id, pool));

  txn->being_written = FALSE;

  return SVN_NO_ERROR;
}
