
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_4__ ;
typedef struct TYPE_25__ TYPE_3__ ;
typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_1__ ;


typedef scalar_t__ svn_revnum_t ;
typedef int svn_fs_x__txn_id_t ;
typedef int svn_fs_x__pair_cache_key_t ;
typedef int svn_fs_x__id_t ;
struct TYPE_23__ {scalar_t__ youngest_rev_cache; int flush_to_disk; } ;
typedef TYPE_1__ svn_fs_x__data_t ;
typedef int svn_fs_x__batch_fsync_t ;
typedef int svn_error_t ;
struct TYPE_24__ {TYPE_3__* txn; TYPE_4__* fs; scalar_t__* new_rev_p; int reps_pool; int reps_hash; int reps_to_cache; } ;
typedef TYPE_2__ commit_baton_t ;
typedef int apr_pool_t ;
typedef int apr_off_t ;
typedef int apr_hash_t ;
typedef int apr_file_t ;
typedef int apr_array_header_t ;
struct TYPE_26__ {TYPE_1__* fsap_data; } ;
struct TYPE_25__ {scalar_t__ base_rev; int id; } ;


 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int) ;
 int SVN_ERR_FS_TXN_OUT_OF_DATE ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int _ (char*) ;
 int * apr_array_make (int *,int,int) ;
 int auto_create_shard (TYPE_4__*,scalar_t__,int *,int *) ;
 int bump_current (TYPE_4__*,scalar_t__,int *,int *) ;
 int get_writable_final_rev (int **,TYPE_4__*,int ,scalar_t__,int *,int *) ;
 int promote_cached_directories (TYPE_4__*,int *,int *) ;
 int * svn_error_create (int ,int *,int ) ;
 int svn_fs_x__add_index_data (TYPE_4__*,int *,int ,int ,scalar_t__,int *) ;
 int svn_fs_x__batch_fsync_create (int **,int ,int *) ;
 int svn_fs_x__init_txn_root (int *,int ) ;
 int svn_fs_x__is_packed_revprop (TYPE_4__*,scalar_t__) ;
 int svn_fs_x__path_l2p_proto_index (TYPE_4__*,int ,int *) ;
 int svn_fs_x__path_p2l_proto_index (TYPE_4__*,int ,int *) ;
 char* svn_fs_x__path_rev (TYPE_4__*,scalar_t__,int *) ;
 char* svn_fs_x__path_rev_absolute (TYPE_4__*,scalar_t__,int *) ;
 int svn_fs_x__purge_txn (TYPE_4__*,int ,int *) ;
 int svn_fs_x__read_format_file (TYPE_4__*,int *) ;
 int svn_fs_x__txn_changes_fetch (int **,TYPE_4__*,int ,int *) ;
 int svn_fs_x__txn_get_id (TYPE_3__*) ;
 int svn_fs_x__youngest_rev (scalar_t__*,TYPE_4__*,int *) ;
 int svn_io_copy_perms (char const*,char const*,int *) ;
 int svn_io_file_flush (int *,int *) ;
 int svn_io_file_get_offset (int *,int *,int *) ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 int verify_as_revision_before_current_plus_plus (TYPE_4__*,scalar_t__,int *) ;
 int verify_locks (TYPE_4__*,int ,int *,int *) ;
 int write_final_changed_path_info (int *,int *,TYPE_4__*,int ,int *,scalar_t__,int *) ;
 int write_final_rev (int *,int *,scalar_t__,TYPE_4__*,int *,int ,int *,int ,int ,int ,int ,int *,int *) ;
 int write_final_revprop (char const**,TYPE_3__*,scalar_t__,int *,int *,int *) ;

__attribute__((used)) static svn_error_t *
commit_body(void *baton,
            apr_pool_t *scratch_pool)
{
  commit_baton_t *cb = baton;
  svn_fs_x__data_t *ffd = cb->fs->fsap_data;
  const char *old_rev_filename, *rev_filename;
  const char *revprop_filename;
  svn_fs_x__id_t root_id, new_root_id;
  svn_revnum_t old_rev, new_rev;
  apr_file_t *proto_file;
  apr_off_t initial_offset, changed_path_offset;
  svn_fs_x__txn_id_t txn_id = svn_fs_x__txn_get_id(cb->txn);
  apr_hash_t *changed_paths;
  svn_fs_x__batch_fsync_t *batch;
  apr_array_header_t *directory_ids
    = apr_array_make(scratch_pool, 4, sizeof(svn_fs_x__pair_cache_key_t));




  apr_pool_t *subpool = svn_pool_create(scratch_pool);
  SVN_ERR(svn_fs_x__read_format_file(cb->fs, subpool));


  SVN_ERR(svn_fs_x__youngest_rev(&old_rev, cb->fs, subpool));
  svn_pool_clear(subpool);



  if (cb->txn->base_rev != old_rev)
    return svn_error_create(SVN_ERR_FS_TXN_OUT_OF_DATE, ((void*)0),
                            _("Transaction out of date"));



  SVN_ERR(svn_fs_x__txn_changes_fetch(&changed_paths, cb->fs, txn_id,
                                      scratch_pool));





  SVN_ERR(verify_locks(cb->fs, txn_id, changed_paths, subpool));
  svn_pool_clear(subpool);


  new_rev = old_rev + 1;



  SVN_ERR(svn_fs_x__batch_fsync_create(&batch, ffd->flush_to_disk,
                                       scratch_pool));


  SVN_ERR(auto_create_shard(cb->fs, new_rev, batch, subpool));






  SVN_ERR(get_writable_final_rev(&proto_file, cb->fs, txn_id, new_rev,
                                 batch, subpool));
  SVN_ERR(svn_io_file_get_offset(&initial_offset, proto_file, subpool));
  svn_pool_clear(subpool);


  svn_fs_x__init_txn_root(&root_id, txn_id);
  SVN_ERR(write_final_rev(&new_root_id, proto_file, new_rev, cb->fs, &root_id,
                          initial_offset, directory_ids, cb->reps_to_cache,
                          cb->reps_hash, cb->reps_pool, TRUE, changed_paths,
                          subpool));
  svn_pool_clear(subpool);


  SVN_ERR(write_final_changed_path_info(&changed_path_offset, proto_file,
                                        cb->fs, txn_id, changed_paths,
                                        new_rev, subpool));
  svn_pool_clear(subpool);


  SVN_ERR(svn_fs_x__add_index_data(cb->fs, proto_file,
                      svn_fs_x__path_l2p_proto_index(cb->fs, txn_id, subpool),
                      svn_fs_x__path_p2l_proto_index(cb->fs, txn_id, subpool),
                      new_rev, subpool));
  svn_pool_clear(subpool);


  old_rev_filename = svn_fs_x__path_rev_absolute(cb->fs, old_rev, subpool);
  rev_filename = svn_fs_x__path_rev(cb->fs, new_rev, subpool);
  SVN_ERR(svn_io_copy_perms(rev_filename, old_rev_filename, subpool));


  SVN_ERR_ASSERT(! svn_fs_x__is_packed_revprop(cb->fs, new_rev));
  SVN_ERR(write_final_revprop(&revprop_filename, cb->txn, new_rev, batch,
                              subpool, subpool));
  SVN_ERR(svn_io_copy_perms(revprop_filename, old_rev_filename, subpool));
  svn_pool_clear(subpool);


  SVN_ERR(svn_io_file_flush(proto_file, subpool));
  SVN_ERR(verify_as_revision_before_current_plus_plus(cb->fs, new_rev,
                                                      subpool));


  SVN_ERR(bump_current(cb->fs, new_rev, batch, subpool));






  *cb->new_rev_p = new_rev;

  ffd->youngest_rev_cache = new_rev;



  SVN_ERR(promote_cached_directories(cb->fs, directory_ids, subpool));


  SVN_ERR(svn_fs_x__purge_txn(cb->fs, cb->txn->id, subpool));

  svn_pool_destroy(subpool);
  return SVN_NO_ERROR;
}
