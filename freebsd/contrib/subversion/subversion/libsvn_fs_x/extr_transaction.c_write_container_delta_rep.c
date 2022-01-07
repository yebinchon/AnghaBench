
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_35__ TYPE_8__ ;
typedef struct TYPE_34__ TYPE_7__ ;
typedef struct TYPE_33__ TYPE_6__ ;
typedef struct TYPE_32__ TYPE_5__ ;
typedef struct TYPE_31__ TYPE_4__ ;
typedef struct TYPE_30__ TYPE_3__ ;
typedef struct TYPE_29__ TYPE_2__ ;
typedef struct TYPE_28__ TYPE_1__ ;


struct TYPE_29__ {scalar_t__ size; void* sha1_ctx; void* md5_ctx; int * stream; } ;
typedef TYPE_2__ write_container_baton_t ;
typedef int svn_txdelta_window_handler_t ;
typedef int svn_stream_t ;
typedef int svn_revnum_t ;
typedef int svn_fs_x__txn_id_t ;
struct TYPE_28__ {int number; int change_set; } ;
struct TYPE_30__ {void* size; TYPE_1__ id; scalar_t__ expanded_size; } ;
typedef TYPE_3__ svn_fs_x__representation_t ;
struct TYPE_31__ {int type; void* base_length; int base_item_index; int base_revision; int member_0; } ;
typedef TYPE_4__ svn_fs_x__rep_header_t ;
struct TYPE_32__ {void* offset; int item_count; TYPE_6__* items; scalar_t__ type; void* size; int fnv1_checksum; } ;
typedef TYPE_5__ svn_fs_x__p2l_entry_t ;
typedef int svn_fs_x__noderev_t ;
struct TYPE_33__ {int number; int change_set; } ;
typedef TYPE_6__ svn_fs_x__id_t ;
struct TYPE_34__ {int delta_compression_level; } ;
typedef TYPE_7__ svn_fs_x__data_t ;
struct TYPE_35__ {TYPE_7__* fsap_data; } ;
typedef TYPE_8__ svn_fs_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int (* collection_writer_t ) (int *,void*,int *) ;
typedef scalar_t__ apr_uint32_t ;
typedef int apr_pool_t ;
typedef void* apr_off_t ;
typedef int apr_hash_t ;
typedef int apr_file_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int SVN_FS_X__INVALID_CHANGE_SET ;
 scalar_t__ SVN_FS_X__ITEM_TYPE_DIR_PROPS ;
 scalar_t__ SVN_FS_X__ITEM_TYPE_DIR_REP ;
 scalar_t__ SVN_FS_X__ITEM_TYPE_FILE_PROPS ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int allocate_item_index (int *,TYPE_8__*,int ,int *) ;
 TYPE_2__* apr_pcalloc (int *,int) ;
 int choose_delta_base (TYPE_3__**,TYPE_8__*,int *,int,int *) ;
 int digests_final (TYPE_3__*,void*,void*,int *) ;
 int get_shared_rep (TYPE_3__**,TYPE_8__*,int ,TYPE_3__*,int *,void*,int *,int *,int *) ;
 int memcpy (TYPE_3__*,TYPE_3__*,int) ;
 int store_l2p_index_entry (TYPE_8__*,int ,void*,int ,int *) ;
 int store_p2l_index_entry (TYPE_8__*,int ,TYPE_5__*,int *) ;
 int * svn_checksum__wrap_write_stream_fnv1a_32x4 (int *,int ,int *) ;
 void* svn_checksum_ctx_create (int ,int *) ;
 int svn_checksum_md5 ;
 int svn_checksum_sha1 ;
 int svn_fs_x__get_contents (int **,TYPE_8__*,TYPE_3__*,int ,int *) ;
 int svn_fs_x__get_revnum (int ) ;
 int svn_fs_x__rep_delta ;
 int svn_fs_x__rep_self_delta ;
 int svn_fs_x__write_rep_header (TYPE_4__*,int *,int *) ;
 int svn_io_file_get_offset (void**,int *,int *) ;
 int svn_io_file_trunc (int *,void*,int *) ;
 int svn_stream_close (int *) ;
 int * svn_stream_create (TYPE_2__*,int *) ;
 int svn_stream_disown (int *,int *) ;
 int svn_stream_from_aprfile2 (int *,int ,int *) ;
 int svn_stream_puts (int *,char*) ;
 int svn_stream_set_write (int *,int ) ;
 int * svn_txdelta_target_push (int ,void*,int *,int *) ;
 int svn_txdelta_to_svndiff3 (int *,void**,int ,int,int ,int *) ;
 int write_container_handler ;

__attribute__((used)) static svn_error_t *
write_container_delta_rep(svn_fs_x__representation_t *rep,
                          apr_file_t *file,
                          void *collection,
                          collection_writer_t writer,
                          svn_fs_t *fs,
                          svn_fs_x__txn_id_t txn_id,
                          svn_fs_x__noderev_t *noderev,
                          apr_hash_t *reps_hash,
                          svn_boolean_t allow_rep_sharing,
                          apr_uint32_t item_type,
                          svn_revnum_t final_revision,
                          apr_pool_t *scratch_pool)
{
  svn_fs_x__data_t *ffd = fs->fsap_data;
  svn_txdelta_window_handler_t diff_wh;
  void *diff_whb;

  svn_stream_t *file_stream;
  svn_stream_t *stream;
  svn_fs_x__representation_t *base_rep;
  svn_fs_x__representation_t *old_rep = ((void*)0);
  svn_fs_x__p2l_entry_t entry;
  svn_stream_t *source;
  svn_fs_x__rep_header_t header = { 0 };

  apr_off_t rep_end = 0;
  apr_off_t delta_start = 0;
  apr_off_t offset = 0;

  write_container_baton_t *whb;
  int diff_version = 1;
  svn_boolean_t is_props = (item_type == SVN_FS_X__ITEM_TYPE_FILE_PROPS)
                        || (item_type == SVN_FS_X__ITEM_TYPE_DIR_PROPS);


  SVN_ERR(choose_delta_base(&base_rep, fs, noderev, is_props, scratch_pool));
  SVN_ERR(svn_fs_x__get_contents(&source, fs, base_rep, FALSE, scratch_pool));

  SVN_ERR(svn_io_file_get_offset(&offset, file, scratch_pool));


  if (base_rep)
    {
      header.base_revision = svn_fs_x__get_revnum(base_rep->id.change_set);
      header.base_item_index = base_rep->id.number;
      header.base_length = base_rep->size;
      header.type = svn_fs_x__rep_delta;
    }
  else
    {
      header.type = svn_fs_x__rep_self_delta;
    }

  file_stream = svn_checksum__wrap_write_stream_fnv1a_32x4(
                                  &entry.fnv1_checksum,
                                  svn_stream_from_aprfile2(file, TRUE,
                                                           scratch_pool),
                                  scratch_pool);
  SVN_ERR(svn_fs_x__write_rep_header(&header, file_stream, scratch_pool));
  SVN_ERR(svn_io_file_get_offset(&delta_start, file, scratch_pool));


  svn_txdelta_to_svndiff3(&diff_wh,
                          &diff_whb,
                          svn_stream_disown(file_stream, scratch_pool),
                          diff_version,
                          ffd->delta_compression_level,
                          scratch_pool);

  whb = apr_pcalloc(scratch_pool, sizeof(*whb));
  whb->stream = svn_txdelta_target_push(diff_wh, diff_whb, source,
                                        scratch_pool);
  whb->size = 0;
  whb->md5_ctx = svn_checksum_ctx_create(svn_checksum_md5, scratch_pool);
  if (item_type != SVN_FS_X__ITEM_TYPE_DIR_REP)
    whb->sha1_ctx = svn_checksum_ctx_create(svn_checksum_sha1, scratch_pool);


  stream = svn_stream_create(whb, scratch_pool);
  svn_stream_set_write(stream, write_container_handler);

  SVN_ERR(writer(stream, collection, scratch_pool));
  SVN_ERR(svn_stream_close(whb->stream));


  SVN_ERR(digests_final(rep, whb->md5_ctx, whb->sha1_ctx, scratch_pool));


  SVN_ERR(svn_io_file_get_offset(&rep_end, file, scratch_pool));
  rep->size = rep_end - delta_start;
  rep->expanded_size = whb->size;



  if (allow_rep_sharing)
    SVN_ERR(get_shared_rep(&old_rep, fs, txn_id, rep, file, offset, reps_hash,
                           scratch_pool, scratch_pool));

  if (old_rep)
    {
      SVN_ERR(svn_stream_close(file_stream));


      SVN_ERR(svn_io_file_trunc(file, offset, scratch_pool));


      memcpy(rep, old_rep, sizeof (*rep));
    }
  else
    {
      svn_fs_x__id_t noderev_id;


      SVN_ERR(svn_stream_puts(file_stream, "ENDREP\n"));
      SVN_ERR(svn_stream_close(file_stream));

      SVN_ERR(allocate_item_index(&rep->id.number, fs, txn_id,
                                  scratch_pool));
      SVN_ERR(store_l2p_index_entry(fs, txn_id, offset, rep->id.number,
                                    scratch_pool));

      noderev_id.change_set = SVN_FS_X__INVALID_CHANGE_SET;
      noderev_id.number = rep->id.number;

      entry.offset = offset;
      SVN_ERR(svn_io_file_get_offset(&offset, file, scratch_pool));
      entry.size = offset - entry.offset;
      entry.type = item_type;
      entry.item_count = 1;
      entry.items = &noderev_id;

      SVN_ERR(store_p2l_index_entry(fs, txn_id, &entry, scratch_pool));


      rep->size = rep_end - delta_start;
    }

  return SVN_NO_ERROR;
}
