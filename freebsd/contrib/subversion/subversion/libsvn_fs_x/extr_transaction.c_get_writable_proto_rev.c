
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_fs_x__txn_id_t ;
typedef int svn_fs_t ;
typedef int svn_error_t ;
struct TYPE_3__ {void** lockcookie; int txn_id; } ;
typedef TYPE_1__ get_writable_proto_rev_baton_t ;
typedef int apr_pool_t ;
typedef int apr_off_t ;
typedef int apr_file_t ;


 int APR_BUFFERED ;
 int APR_END ;
 int APR_OS_DEFAULT ;
 int APR_READ ;
 int APR_WRITE ;
 int SVN_ERR (int ) ;
 int * auto_truncate_proto_rev (int *,int *,int ,int ,int *) ;
 int get_writable_proto_rev_body ;
 int * svn_error_compose_create (int *,int ) ;
 int * svn_error_trace (int *) ;
 int svn_fs_x__path_txn_proto_rev (int *,int ,int *) ;
 int * svn_io_file_open (int **,int ,int,int ,int *) ;
 int * svn_io_file_seek (int *,int ,int *,int *) ;
 int unlock_proto_rev (int *,int ,void*,int *) ;
 int with_txnlist_lock (int *,int ,TYPE_1__*,int *) ;

__attribute__((used)) static svn_error_t *
get_writable_proto_rev(apr_file_t **file,
                       void **lockcookie,
                       svn_fs_t *fs,
                       svn_fs_x__txn_id_t txn_id,
                       apr_pool_t *pool)
{
  get_writable_proto_rev_baton_t b;
  svn_error_t *err;
  apr_off_t end_offset = 0;

  b.lockcookie = lockcookie;
  b.txn_id = txn_id;

  SVN_ERR(with_txnlist_lock(fs, get_writable_proto_rev_body, &b, pool));


  err = svn_io_file_open(file,
                         svn_fs_x__path_txn_proto_rev(fs, txn_id, pool),
                         APR_READ | APR_WRITE | APR_BUFFERED, APR_OS_DEFAULT,
                         pool);
  if (!err)
    err = svn_io_file_seek(*file, APR_END, &end_offset, pool);






  if (!err)
    err = auto_truncate_proto_rev(fs, *file, end_offset, txn_id, pool);

  if (err)
    {
      err = svn_error_compose_create(
              err,
              unlock_proto_rev(fs, txn_id, *lockcookie, pool));

      *lockcookie = ((void*)0);
    }

  return svn_error_trace(err);
}
