
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_stream_t ;
typedef int svn_fs_t ;
struct TYPE_4__ {int number; int revision; } ;
struct TYPE_5__ {void* offset; int fnv1_checksum; TYPE_1__ item; int type; void* size; } ;
typedef TYPE_2__ svn_fs_fs__p2l_entry_t ;
typedef int svn_fs_fs__id_part_t ;
typedef int svn_error_t ;
typedef int svn_checksum_ctx_t ;
typedef int apr_pool_t ;
typedef void* apr_off_t ;
typedef int apr_hash_t ;
typedef int apr_file_t ;


 int SVN_ERR (int ) ;
 int SVN_FS_FS__ITEM_INDEX_CHANGES ;
 int SVN_FS_FS__ITEM_TYPE_CHANGES ;
 int SVN_INVALID_REVNUM ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int fnv1a_checksum_finalize (int *,int *,int *) ;
 int * fnv1a_wrap_stream (int **,int *,int *) ;
 int store_l2p_index_entry (int *,int const*,void*,int ,int *) ;
 int store_p2l_index_entry (int *,int const*,TYPE_2__*,int *) ;
 scalar_t__ svn_fs_fs__use_log_addressing (int *) ;
 int svn_fs_fs__write_changes (int *,int *,int *,int ,int *) ;
 int svn_io_file_get_offset (void**,int *,int *) ;
 int * svn_stream_from_aprfile2 (int *,int ,int *) ;

__attribute__((used)) static svn_error_t *
write_final_changed_path_info(apr_off_t *offset_p,
                              apr_file_t *file,
                              svn_fs_t *fs,
                              const svn_fs_fs__id_part_t *txn_id,
                              apr_hash_t *changed_paths,
                              apr_pool_t *pool)
{
  apr_off_t offset;
  svn_stream_t *stream;
  svn_checksum_ctx_t *fnv1a_checksum_ctx;

  SVN_ERR(svn_io_file_get_offset(&offset, file, pool));


  stream = svn_stream_from_aprfile2(file, TRUE, pool);
  if (svn_fs_fs__use_log_addressing(fs))
    stream = fnv1a_wrap_stream(&fnv1a_checksum_ctx, stream, pool);
  else
    fnv1a_checksum_ctx = ((void*)0);

  SVN_ERR(svn_fs_fs__write_changes(stream, fs, changed_paths, TRUE, pool));

  *offset_p = offset;


  if (svn_fs_fs__use_log_addressing(fs))
    {
      svn_fs_fs__p2l_entry_t entry;

      entry.offset = offset;
      SVN_ERR(svn_io_file_get_offset(&offset, file, pool));
      entry.size = offset - entry.offset;
      entry.type = SVN_FS_FS__ITEM_TYPE_CHANGES;
      entry.item.revision = SVN_INVALID_REVNUM;
      entry.item.number = SVN_FS_FS__ITEM_INDEX_CHANGES;
      SVN_ERR(fnv1a_checksum_finalize(&entry.fnv1_checksum,
                                      fnv1a_checksum_ctx,
                                      pool));

      SVN_ERR(store_p2l_index_entry(fs, txn_id, &entry, pool));
      SVN_ERR(store_l2p_index_entry(fs, txn_id, entry.offset,
                                    SVN_FS_FS__ITEM_INDEX_CHANGES, pool));
    }

  return SVN_NO_ERROR;
}
