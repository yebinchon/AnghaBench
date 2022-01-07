
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_revnum_t ;
typedef int svn_fs_x__txn_id_t ;
typedef int svn_fs_x__batch_fsync_t ;
typedef int svn_fs_t ;
typedef int svn_error_t ;
struct TYPE_3__ {void** lockcookie; int txn_id; } ;
typedef TYPE_1__ get_writable_proto_rev_baton_t ;
typedef int apr_pool_t ;
typedef int apr_off_t ;
typedef int apr_file_t ;


 int APR_END ;
 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int auto_truncate_proto_rev (int *,int *,int ,int ,int *) ;
 int get_writable_proto_rev_body ;
 int svn_error_compose_create (int ,int ) ;
 int svn_fs_x__batch_fsync_new_path (int *,char const*,int *) ;
 int svn_fs_x__batch_fsync_open_file (int **,int *,char const*,int *) ;
 char* svn_fs_x__path_rev (int *,int ,int *) ;
 char* svn_fs_x__path_txn_proto_rev (int *,int ,int *) ;
 int svn_io_file_rename2 (char const*,char const*,int ,int *) ;
 int svn_io_file_seek (int *,int ,int *,int *) ;
 int unlock_proto_rev (int *,int ,void*,int *) ;
 int with_txnlist_lock (int *,int ,TYPE_1__*,int *) ;

__attribute__((used)) static svn_error_t *
get_writable_final_rev(apr_file_t **file,
                       svn_fs_t *fs,
                       svn_fs_x__txn_id_t txn_id,
                       svn_revnum_t revision,
                       svn_fs_x__batch_fsync_t *batch,
                       apr_pool_t *scratch_pool)
{
  get_writable_proto_rev_baton_t baton;
  apr_off_t end_offset = 0;
  void *lockcookie;

  const char *proto_rev_filename
    = svn_fs_x__path_txn_proto_rev(fs, txn_id, scratch_pool);
  const char *final_rev_filename
    = svn_fs_x__path_rev(fs, revision, scratch_pool);


  baton.lockcookie = &lockcookie;
  baton.txn_id = txn_id;

  SVN_ERR(with_txnlist_lock(fs, get_writable_proto_rev_body, &baton,
                            scratch_pool));



  SVN_ERR(svn_error_compose_create(svn_io_file_rename2(proto_rev_filename,
                                                       final_rev_filename,
                                                       FALSE,
                                                       scratch_pool),
                                   unlock_proto_rev(fs, txn_id, lockcookie,
                                                    scratch_pool)));
  SVN_ERR(svn_fs_x__batch_fsync_new_path(batch, final_rev_filename,
                                         scratch_pool));



  SVN_ERR(svn_fs_x__batch_fsync_open_file(file, batch, final_rev_filename,
                                          scratch_pool));
  SVN_ERR(svn_io_file_seek(*file, APR_END, &end_offset, scratch_pool));




  SVN_ERR(auto_truncate_proto_rev(fs, *file, end_offset, txn_id,
                                  scratch_pool));

  return SVN_NO_ERROR;
}
