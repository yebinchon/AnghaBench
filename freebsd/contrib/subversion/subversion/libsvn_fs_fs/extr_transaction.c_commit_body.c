
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_41__ TYPE_5__ ;
typedef struct TYPE_40__ TYPE_4__ ;
typedef struct TYPE_39__ TYPE_3__ ;
typedef struct TYPE_38__ TYPE_2__ ;
typedef struct TYPE_37__ TYPE_1__ ;


struct TYPE_37__ {int len; int data; } ;
typedef TYPE_1__ svn_stringbuf_t ;
typedef scalar_t__ svn_revnum_t ;
typedef int svn_fs_id_t ;
typedef int svn_fs_fs__id_part_t ;
struct TYPE_38__ {int apr_err; } ;
typedef TYPE_2__ svn_error_t ;
struct commit_baton {TYPE_4__* txn; TYPE_5__* fs; scalar_t__* new_rev_p; int reps_pool; int reps_hash; int reps_to_cache; } ;
typedef int pair_cache_key_t ;
struct TYPE_39__ {scalar_t__ max_files_per_dir; scalar_t__ youngest_rev_cache; scalar_t__ verify_before_commit; scalar_t__ flush_to_disk; } ;
typedef TYPE_3__ fs_fs_data_t ;
typedef int apr_uint64_t ;
typedef int apr_pool_t ;
typedef int apr_off_t ;
typedef int apr_hash_t ;
typedef int apr_file_t ;
typedef int apr_array_header_t ;
struct TYPE_41__ {int path; TYPE_3__* fsap_data; } ;
struct TYPE_40__ {scalar_t__ base_rev; int id; } ;


 int APR_OS_DEFAULT ;
 int APR_STATUS_IS_EEXIST (int ) ;
 int PATH_REVPROPS_DIR ;
 int PATH_REVS_DIR ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int) ;
 int SVN_ERR_FS_TXN_OUT_OF_DATE ;
 TYPE_2__* SVN_NO_ERROR ;
 int TRUE ;
 int _ (char*) ;
 int * apr_array_make (int *,int,int) ;
 int get_writable_proto_rev (int **,void**,TYPE_5__*,int const*,int *) ;
 int promote_cached_directories (TYPE_5__*,int *,int *) ;
 int svn_dirent_join (int ,int ,int *) ;
 int svn_error_clear (TYPE_2__*) ;
 TYPE_2__* svn_error_create (int ,int *,int ) ;
 TYPE_2__* svn_error_trace (TYPE_2__*) ;
 int svn_fs_fs__add_index_data (TYPE_5__*,int *,int ,int ,scalar_t__,int *) ;
 scalar_t__ svn_fs_fs__id_item (int const*) ;
 int * svn_fs_fs__id_txn_create_root (int const*,int *) ;
 int svn_fs_fs__is_packed_revprop (TYPE_5__*,scalar_t__) ;
 int svn_fs_fs__move_into_place (char const*,char const*,char const*,scalar_t__,int *) ;
 int svn_fs_fs__path_l2p_proto_index (TYPE_5__*,int const*,int *) ;
 int svn_fs_fs__path_p2l_proto_index (TYPE_5__*,int const*,int *) ;
 char* svn_fs_fs__path_rev (TYPE_5__*,scalar_t__,int *) ;
 char* svn_fs_fs__path_rev_absolute (TYPE_5__*,scalar_t__,int *) ;
 char* svn_fs_fs__path_rev_shard (TYPE_5__*,scalar_t__,int *) ;
 char* svn_fs_fs__path_revprops (TYPE_5__*,scalar_t__,int *) ;
 char* svn_fs_fs__path_revprops_shard (TYPE_5__*,scalar_t__,int *) ;
 char* svn_fs_fs__path_txn_proto_rev (TYPE_5__*,int const*,int *) ;
 int svn_fs_fs__purge_txn (TYPE_5__*,int ,int *) ;
 int svn_fs_fs__read_current (scalar_t__*,int *,int *,TYPE_5__*,int *) ;
 int svn_fs_fs__read_format_file (TYPE_5__*,int *) ;
 int svn_fs_fs__txn_changes_fetch (int **,TYPE_5__*,int const*,int *) ;
 int * svn_fs_fs__txn_get_id (TYPE_4__*) ;
 TYPE_1__* svn_fs_fs__unparse_revision_trailer (int ,int ,int *) ;
 scalar_t__ svn_fs_fs__use_log_addressing (TYPE_5__*) ;
 int svn_io_copy_perms (int ,char const*,int *) ;
 TYPE_2__* svn_io_dir_make (char const*,int ,int *) ;
 int svn_io_file_close (int *,int *) ;
 int svn_io_file_flush_to_disk (int *,int *) ;
 int svn_io_file_get_offset (int *,int *,int *) ;
 int svn_io_file_write_full (int *,int ,int ,int *,int *) ;
 int unlock_proto_rev (TYPE_5__*,int const*,void*,int *) ;
 int verify_before_commit (TYPE_5__*,scalar_t__,int *) ;
 int verify_locks (TYPE_5__*,int const*,int *,int *) ;
 int write_final_changed_path_info (int *,int *,TYPE_5__*,int const*,int *,int *) ;
 int write_final_current (TYPE_5__*,int const*,scalar_t__,int ,int ,int *) ;
 int write_final_rev (int const**,int *,scalar_t__,TYPE_5__*,int const*,int ,int ,int ,int *,int ,int ,int ,int ,int *) ;
 int write_final_revprop (char const*,char const*,TYPE_4__*,scalar_t__,int *) ;

__attribute__((used)) static svn_error_t *
commit_body(void *baton, apr_pool_t *pool)
{
  struct commit_baton *cb = baton;
  fs_fs_data_t *ffd = cb->fs->fsap_data;
  const char *old_rev_filename, *rev_filename, *proto_filename;
  const char *revprop_filename;
  const svn_fs_id_t *root_id, *new_root_id;
  apr_uint64_t start_node_id;
  apr_uint64_t start_copy_id;
  svn_revnum_t old_rev, new_rev;
  apr_file_t *proto_file;
  void *proto_file_lockcookie;
  apr_off_t initial_offset, changed_path_offset;
  const svn_fs_fs__id_part_t *txn_id = svn_fs_fs__txn_get_id(cb->txn);
  apr_hash_t *changed_paths;
  apr_array_header_t *directory_ids = apr_array_make(pool, 4,
                                                     sizeof(pair_cache_key_t));
  SVN_ERR(svn_fs_fs__read_format_file(cb->fs, pool));




  SVN_ERR(svn_fs_fs__read_current(&old_rev, &start_node_id, &start_copy_id,
                                  cb->fs, pool));
  ffd->youngest_rev_cache = old_rev;



  if (cb->txn->base_rev != old_rev)
    return svn_error_create(SVN_ERR_FS_TXN_OUT_OF_DATE, ((void*)0),
                            _("Transaction out of date"));



  SVN_ERR(svn_fs_fs__txn_changes_fetch(&changed_paths, cb->fs, txn_id,
                                       pool));





  SVN_ERR(verify_locks(cb->fs, txn_id, changed_paths, pool));


  new_rev = old_rev + 1;


  SVN_ERR(get_writable_proto_rev(&proto_file, &proto_file_lockcookie,
                                 cb->fs, txn_id, pool));
  SVN_ERR(svn_io_file_get_offset(&initial_offset, proto_file, pool));


  root_id = svn_fs_fs__id_txn_create_root(txn_id, pool);
  SVN_ERR(write_final_rev(&new_root_id, proto_file, new_rev, cb->fs, root_id,
                          start_node_id, start_copy_id, initial_offset,
                          directory_ids, cb->reps_to_cache, cb->reps_hash,
                          cb->reps_pool, TRUE, pool));


  SVN_ERR(write_final_changed_path_info(&changed_path_offset, proto_file,
                                        cb->fs, txn_id, changed_paths,
                                        pool));

  if (svn_fs_fs__use_log_addressing(cb->fs))
    {

      SVN_ERR(svn_fs_fs__add_index_data(cb->fs, proto_file,
                      svn_fs_fs__path_l2p_proto_index(cb->fs, txn_id, pool),
                      svn_fs_fs__path_p2l_proto_index(cb->fs, txn_id, pool),
                      new_rev, pool));
    }
  else
    {


      svn_stringbuf_t *trailer
        = svn_fs_fs__unparse_revision_trailer
                  ((apr_off_t)svn_fs_fs__id_item(new_root_id),
                   changed_path_offset,
                   pool);
      SVN_ERR(svn_io_file_write_full(proto_file, trailer->data, trailer->len,
                                     ((void*)0), pool));
    }

  if (ffd->flush_to_disk)
    SVN_ERR(svn_io_file_flush_to_disk(proto_file, pool));
  SVN_ERR(svn_io_file_close(proto_file, pool));
  if (ffd->max_files_per_dir && new_rev % ffd->max_files_per_dir == 0)
    {

        {
          const char *new_dir
            = svn_fs_fs__path_rev_shard(cb->fs, new_rev, pool);
          svn_error_t *err
            = svn_io_dir_make(new_dir, APR_OS_DEFAULT, pool);
          if (err && !APR_STATUS_IS_EEXIST(err->apr_err))
            return svn_error_trace(err);
          svn_error_clear(err);
          SVN_ERR(svn_io_copy_perms(svn_dirent_join(cb->fs->path,
                                                    PATH_REVS_DIR,
                                                    pool),
                                    new_dir, pool));
        }


      SVN_ERR_ASSERT(! svn_fs_fs__is_packed_revprop(cb->fs, new_rev));
        {
          const char *new_dir
            = svn_fs_fs__path_revprops_shard(cb->fs, new_rev, pool);
          svn_error_t *err
            = svn_io_dir_make(new_dir, APR_OS_DEFAULT, pool);
          if (err && !APR_STATUS_IS_EEXIST(err->apr_err))
            return svn_error_trace(err);
          svn_error_clear(err);
          SVN_ERR(svn_io_copy_perms(svn_dirent_join(cb->fs->path,
                                                    PATH_REVPROPS_DIR,
                                                    pool),
                                    new_dir, pool));
        }
    }






  old_rev_filename = svn_fs_fs__path_rev_absolute(cb->fs, old_rev, pool);
  rev_filename = svn_fs_fs__path_rev(cb->fs, new_rev, pool);
  proto_filename = svn_fs_fs__path_txn_proto_rev(cb->fs, txn_id, pool);
  SVN_ERR(svn_fs_fs__move_into_place(proto_filename, rev_filename,
                                     old_rev_filename, ffd->flush_to_disk,
                                     pool));





  SVN_ERR(unlock_proto_rev(cb->fs, txn_id, proto_file_lockcookie, pool));


  SVN_ERR_ASSERT(! svn_fs_fs__is_packed_revprop(cb->fs, new_rev));
  revprop_filename = svn_fs_fs__path_revprops(cb->fs, new_rev, pool);
  SVN_ERR(write_final_revprop(revprop_filename, old_rev_filename,
                              cb->txn, ffd->flush_to_disk, pool));


  if (ffd->verify_before_commit)
    {
      SVN_ERR(verify_before_commit(cb->fs, new_rev, pool));
    }


  SVN_ERR(write_final_current(cb->fs, txn_id, new_rev, start_node_id,
                              start_copy_id, pool));






  *cb->new_rev_p = new_rev;

  ffd->youngest_rev_cache = new_rev;



  SVN_ERR(promote_cached_directories(cb->fs, directory_ids, pool));


  SVN_ERR(svn_fs_fs__purge_txn(cb->fs, cb->txn->id, pool));

  return SVN_NO_ERROR;
}
