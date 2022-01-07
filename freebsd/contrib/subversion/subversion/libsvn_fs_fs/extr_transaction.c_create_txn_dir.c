
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int svn_revnum_t ;
typedef int svn_fs_t ;
struct TYPE_5__ {int number; int revision; } ;
typedef TYPE_1__ svn_fs_fs__id_part_t ;
typedef int svn_error_t ;
struct get_and_increment_txn_key_baton {int txn_number; int * fs; int * pool; } ;
typedef int apr_pool_t ;


 int APR_OS_DEFAULT ;
 int SVN_ERR (int ) ;
 int get_and_increment_txn_key_body ;
 char* svn_fs_fs__id_txn_unparse (TYPE_1__*,int *) ;
 char* svn_fs_fs__path_txn_dir (int *,TYPE_1__*,int *) ;
 int svn_fs_fs__with_txn_current_lock (int *,int ,struct get_and_increment_txn_key_baton*,int *) ;
 int * svn_io_dir_make (char const*,int ,int *) ;

__attribute__((used)) static svn_error_t *
create_txn_dir(const char **id_p,
               svn_fs_fs__id_part_t *txn_id,
               svn_fs_t *fs,
               svn_revnum_t rev,
               apr_pool_t *pool)
{
  struct get_and_increment_txn_key_baton cb;
  const char *txn_dir;





  cb.pool = pool;
  cb.fs = fs;
  SVN_ERR(svn_fs_fs__with_txn_current_lock(fs,
                                           get_and_increment_txn_key_body,
                                           &cb,
                                           pool));
  txn_id->revision = rev;
  txn_id->number = cb.txn_number;

  *id_p = svn_fs_fs__id_txn_unparse(txn_id, pool);
  txn_dir = svn_fs_fs__path_txn_dir(fs, txn_id, pool);

  return svn_io_dir_make(txn_dir, APR_OS_DEFAULT, pool);
}
