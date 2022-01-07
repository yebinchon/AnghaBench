
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int txn_id; int * lockcookie; } ;
typedef TYPE_1__ unlock_proto_rev_baton_t ;
struct TYPE_5__ {scalar_t__ being_written; } ;
typedef TYPE_2__ svn_fs_x__shared_txn_data_t ;
typedef int svn_fs_t ;
typedef int svn_error_t ;
typedef scalar_t__ apr_status_t ;
typedef int apr_pool_t ;
typedef int apr_file_t ;


 scalar_t__ FALSE ;
 int SVN_ERR_FS_CORRUPT ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 scalar_t__ apr_file_close (int *) ;
 scalar_t__ apr_file_unlock (int *) ;
 TYPE_2__* get_shared_txn (int *,int ,scalar_t__) ;
 int * svn_error_createf (int ,int *,int ,int ) ;
 int * svn_error_wrap_apr (scalar_t__,int ,int ) ;
 int svn_fs_x__txn_name (int ,int *) ;

__attribute__((used)) static svn_error_t *
unlock_proto_rev_body(svn_fs_t *fs,
                      const void *baton,
                      apr_pool_t *scratch_pool)
{
  const unlock_proto_rev_baton_t *b = baton;
  apr_file_t *lockfile = b->lockcookie;
  svn_fs_x__shared_txn_data_t *txn = get_shared_txn(fs, b->txn_id, FALSE);
  apr_status_t apr_err;

  if (!txn)
    return svn_error_createf(SVN_ERR_FS_CORRUPT, ((void*)0),
                             _("Can't unlock unknown transaction '%s'"),
                             svn_fs_x__txn_name(b->txn_id, scratch_pool));
  if (!txn->being_written)
    return svn_error_createf(SVN_ERR_FS_CORRUPT, ((void*)0),
                             _("Can't unlock nonlocked transaction '%s'"),
                             svn_fs_x__txn_name(b->txn_id, scratch_pool));

  apr_err = apr_file_unlock(lockfile);
  if (apr_err)
    return svn_error_wrap_apr
      (apr_err,
       _("Can't unlock prototype revision lockfile for transaction '%s'"),
       svn_fs_x__txn_name(b->txn_id, scratch_pool));
  apr_err = apr_file_close(lockfile);
  if (apr_err)
    return svn_error_wrap_apr
      (apr_err,
       _("Can't close prototype revision lockfile for transaction '%s'"),
       svn_fs_x__txn_name(b->txn_id, scratch_pool));

  txn->being_written = FALSE;

  return SVN_NO_ERROR;
}
