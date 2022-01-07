
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_fs_t ;
typedef int svn_error_t ;
struct get_writable_proto_rev_baton {void** lockcookie; int txn_id; } ;
struct TYPE_3__ {scalar_t__ being_written; } ;
typedef TYPE_1__ fs_fs_shared_txn_data_t ;
typedef scalar_t__ apr_status_t ;
typedef int apr_pool_t ;
typedef int apr_file_t ;


 int APR_CREATE ;
 int APR_FLOCK_EXCLUSIVE ;
 int APR_FLOCK_NONBLOCK ;
 int APR_OS_DEFAULT ;
 scalar_t__ APR_STATUS_IS_EAGAIN (scalar_t__) ;
 int APR_WRITE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_FS_REP_BEING_WRITTEN ;
 int * SVN_NO_ERROR ;
 scalar_t__ TRUE ;
 int _ (char*) ;
 scalar_t__ apr_file_lock (int *,int) ;
 TYPE_1__* get_shared_txn (int *,int *,scalar_t__) ;
 int svn_dirent_local_style (char const*,int *) ;
 int svn_error_clear (int ) ;
 int * svn_error_createf (int ,int *,int ,int ) ;
 int * svn_error_wrap_apr (scalar_t__,int ,int ) ;
 int svn_fs_fs__id_txn_unparse (int *,int *) ;
 char* svn_fs_fs__path_txn_proto_rev_lock (int *,int *,int *) ;
 int svn_io_file_close (int *,int *) ;
 int svn_io_file_open (int **,char const*,int,int ,int *) ;

__attribute__((used)) static svn_error_t *
get_writable_proto_rev_body(svn_fs_t *fs, const void *baton, apr_pool_t *pool)
{
  const struct get_writable_proto_rev_baton *b = baton;
  void **lockcookie = b->lockcookie;
  fs_fs_shared_txn_data_t *txn = get_shared_txn(fs, &b->txn_id, TRUE);



  if (txn->being_written)
    return svn_error_createf(SVN_ERR_FS_REP_BEING_WRITTEN, ((void*)0),
                             _("Cannot write to the prototype revision file "
                               "of transaction '%s' because a previous "
                               "representation is currently being written by "
                               "this process"),
                             svn_fs_fs__id_txn_unparse(&b->txn_id, pool));
  {
    apr_file_t *lockfile;
    apr_status_t apr_err;
    const char *lockfile_path
      = svn_fs_fs__path_txn_proto_rev_lock(fs, &b->txn_id, pool);
    SVN_ERR(svn_io_file_open(&lockfile, lockfile_path,
                             APR_WRITE | APR_CREATE, APR_OS_DEFAULT, pool));

    apr_err = apr_file_lock(lockfile,
                            APR_FLOCK_EXCLUSIVE | APR_FLOCK_NONBLOCK);
    if (apr_err)
      {
        svn_error_clear(svn_io_file_close(lockfile, pool));

        if (APR_STATUS_IS_EAGAIN(apr_err))
          return svn_error_createf(SVN_ERR_FS_REP_BEING_WRITTEN, ((void*)0),
                                   _("Cannot write to the prototype revision "
                                     "file of transaction '%s' because a "
                                     "previous representation is currently "
                                     "being written by another process"),
                                   svn_fs_fs__id_txn_unparse(&b->txn_id,
                                                             pool));

        return svn_error_wrap_apr(apr_err,
                                  _("Can't get exclusive lock on file '%s'"),
                                  svn_dirent_local_style(lockfile_path, pool));
      }

    *lockcookie = lockfile;
  }


  txn->being_written = TRUE;

  return SVN_NO_ERROR;
}
