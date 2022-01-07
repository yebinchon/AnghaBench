
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_stream_t ;
typedef int svn_revnum_t ;
typedef int svn_fs_x__txn_id_t ;
struct TYPE_4__ {void* offset; int item_count; TYPE_2__* items; int type; void* size; int fnv1_checksum; } ;
typedef TYPE_1__ svn_fs_x__p2l_entry_t ;
struct TYPE_5__ {int member_1; int member_0; } ;
typedef TYPE_2__ svn_fs_x__id_t ;
typedef int svn_fs_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef void* apr_off_t ;
typedef int apr_hash_t ;
typedef int apr_file_t ;


 int SVN_ERR (int ) ;
 int SVN_FS_X__ITEM_INDEX_CHANGES ;
 int SVN_FS_X__ITEM_TYPE_CHANGES ;
 int SVN_INVALID_REVNUM ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int store_l2p_index_entry (int *,int ,void*,int ,int *) ;
 int store_p2l_index_entry (int *,int ,TYPE_1__*,int *) ;
 int * svn_checksum__wrap_write_stream_fnv1a_32x4 (int *,int ,int *) ;
 int svn_fs_x__write_changes (int *,int *,int *,int ,int *) ;
 int svn_io_file_get_offset (void**,int *,int *) ;
 int svn_stream_close (int *) ;
 int svn_stream_from_aprfile2 (int *,int ,int *) ;

__attribute__((used)) static svn_error_t *
write_final_changed_path_info(apr_off_t *offset_p,
                              apr_file_t *file,
                              svn_fs_t *fs,
                              svn_fs_x__txn_id_t txn_id,
                              apr_hash_t *changed_paths,
                              svn_revnum_t new_rev,
                              apr_pool_t *scratch_pool)
{
  apr_off_t offset;
  svn_stream_t *stream;
  svn_fs_x__p2l_entry_t entry;
  svn_fs_x__id_t rev_item
    = {SVN_INVALID_REVNUM, SVN_FS_X__ITEM_INDEX_CHANGES};

  SVN_ERR(svn_io_file_get_offset(&offset, file, scratch_pool));


  stream = svn_checksum__wrap_write_stream_fnv1a_32x4(&entry.fnv1_checksum,
                         svn_stream_from_aprfile2(file, TRUE, scratch_pool),
                         scratch_pool);
  SVN_ERR(svn_fs_x__write_changes(stream, fs, changed_paths, TRUE,
                                  scratch_pool));
  SVN_ERR(svn_stream_close(stream));

  *offset_p = offset;


  entry.offset = offset;
  SVN_ERR(svn_io_file_get_offset(&offset, file, scratch_pool));
  entry.size = offset - entry.offset;
  entry.type = SVN_FS_X__ITEM_TYPE_CHANGES;
  entry.item_count = 1;
  entry.items = &rev_item;

  SVN_ERR(store_p2l_index_entry(fs, txn_id, &entry, scratch_pool));
  SVN_ERR(store_l2p_index_entry(fs, txn_id, entry.offset,
                                SVN_FS_X__ITEM_INDEX_CHANGES, scratch_pool));

  return SVN_NO_ERROR;
}
