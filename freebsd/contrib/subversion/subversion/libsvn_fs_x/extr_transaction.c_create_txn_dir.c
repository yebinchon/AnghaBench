
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_fs_x__txn_id_t ;
typedef int svn_fs_t ;
typedef int svn_error_t ;
struct TYPE_3__ {int txn_number; int * fs; } ;
typedef TYPE_1__ get_and_increment_txn_key_baton_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int get_and_increment_txn_key_body ;
 char* svn_fs_x__txn_name (int ,int *) ;
 int svn_fs_x__with_txn_current_lock (int *,int ,TYPE_1__*,int *) ;

__attribute__((used)) static svn_error_t *
create_txn_dir(const char **id_p,
               svn_fs_x__txn_id_t *txn_id,
               svn_fs_t *fs,
               apr_pool_t *result_pool,
               apr_pool_t *scratch_pool)
{
  get_and_increment_txn_key_baton_t cb;





  cb.fs = fs;
  SVN_ERR(svn_fs_x__with_txn_current_lock(fs,
                                          get_and_increment_txn_key_body,
                                          &cb,
                                          scratch_pool));
  *txn_id = cb.txn_number;
  *id_p = svn_fs_x__txn_name(*txn_id, result_pool);

  return SVN_NO_ERROR;
}
