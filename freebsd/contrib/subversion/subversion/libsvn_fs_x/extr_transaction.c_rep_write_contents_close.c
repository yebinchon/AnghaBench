
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_16__ {int number; int change_set; } ;
struct TYPE_17__ {TYPE_2__ id; int expanded_size; void* size; } ;
typedef TYPE_3__ svn_fs_x__representation_t ;
struct TYPE_18__ {void* offset; int item_count; int fnv1_checksum; TYPE_5__* items; int type; void* size; } ;
typedef TYPE_4__ svn_fs_x__p2l_entry_t ;
struct TYPE_19__ {int number; int change_set; } ;
typedef TYPE_5__ svn_fs_x__id_t ;
typedef int svn_error_t ;
struct TYPE_20__ {void* delta_start; void* rep_offset; int local_pool; int lockcookie; int fs; TYPE_7__* noderev; int file; int fnv1a_checksum; int rep_stream; int result_pool; int sha1_checksum_ctx; int md5_checksum_ctx; int rep_size; int delta_stream; } ;
typedef TYPE_6__ rep_write_baton_t ;
typedef void* apr_off_t ;
typedef int apr_int64_t ;
struct TYPE_15__ {int change_set; } ;
struct TYPE_21__ {TYPE_3__* data_rep; TYPE_1__ noderev_id; } ;


 int SVN_ERR (int ) ;
 int SVN_FS_X__INVALID_CHANGE_SET ;
 int SVN_FS_X__ITEM_TYPE_FILE_REP ;
 int * SVN_NO_ERROR ;
 int allocate_item_index (int *,int ,int ,int ) ;
 TYPE_3__* apr_pcalloc (int ,int) ;
 int apr_pool_cleanup_kill (int ,TYPE_6__*,int ) ;
 int digests_final (TYPE_3__*,int ,int ,int ) ;
 int get_shared_rep (TYPE_3__**,int ,int ,TYPE_3__*,int ,void*,int *,int ,int ) ;
 int rep_write_cleanup ;
 int store_l2p_index_entry (int ,int ,void*,int ,int ) ;
 int store_p2l_index_entry (int ,int ,TYPE_4__*,int ) ;
 int store_sha1_rep_mapping (int ,TYPE_7__*,int ) ;
 int svn_fs_x__change_set_by_txn (int ) ;
 int svn_fs_x__get_txn_id (int ) ;
 int svn_fs_x__put_node_revision (int ,TYPE_7__*,int ) ;
 int svn_io_file_close (int ,int ) ;
 int svn_io_file_get_offset (void**,int ,int ) ;
 int svn_io_file_trunc (int ,void*,int ) ;
 int svn_pool_destroy (int ) ;
 int svn_stream_close (int ) ;
 int svn_stream_puts (int ,char*) ;
 int unlock_proto_rev (int ,int ,int ,int ) ;

__attribute__((used)) static svn_error_t *
rep_write_contents_close(void *baton)
{
  rep_write_baton_t *b = baton;
  svn_fs_x__representation_t *rep;
  svn_fs_x__representation_t *old_rep;
  apr_off_t offset;
  apr_int64_t txn_id;

  rep = apr_pcalloc(b->result_pool, sizeof(*rep));



  SVN_ERR(svn_stream_close(b->delta_stream));


  SVN_ERR(svn_io_file_get_offset(&offset, b->file, b->local_pool));
  rep->size = offset - b->delta_start;


  rep->expanded_size = b->rep_size;
  txn_id = svn_fs_x__get_txn_id(b->noderev->noderev_id.change_set);
  rep->id.change_set = svn_fs_x__change_set_by_txn(txn_id);


  SVN_ERR(digests_final(rep, b->md5_checksum_ctx, b->sha1_checksum_ctx,
                        b->result_pool));



  SVN_ERR(get_shared_rep(&old_rep, b->fs, txn_id, rep, b->file, b->rep_offset,
                         ((void*)0), b->result_pool, b->local_pool));

  if (old_rep)
    {

      SVN_ERR(svn_io_file_trunc(b->file, b->rep_offset, b->local_pool));


      b->noderev->data_rep = old_rep;
    }
  else
    {

      SVN_ERR(svn_stream_puts(b->rep_stream, "ENDREP\n"));
      SVN_ERR(allocate_item_index(&rep->id.number, b->fs, txn_id,
                                  b->local_pool));
      SVN_ERR(store_l2p_index_entry(b->fs, txn_id, b->rep_offset,
                                    rep->id.number, b->local_pool));

      b->noderev->data_rep = rep;
    }

  SVN_ERR(svn_stream_close(b->rep_stream));


  apr_pool_cleanup_kill(b->local_pool, b, rep_write_cleanup);


  SVN_ERR(svn_fs_x__put_node_revision(b->fs, b->noderev, b->local_pool));
  if (!old_rep)
    {
      svn_fs_x__p2l_entry_t entry;
      svn_fs_x__id_t noderev_id;
      noderev_id.change_set = SVN_FS_X__INVALID_CHANGE_SET;
      noderev_id.number = rep->id.number;

      entry.offset = b->rep_offset;
      SVN_ERR(svn_io_file_get_offset(&offset, b->file, b->local_pool));
      entry.size = offset - b->rep_offset;
      entry.type = SVN_FS_X__ITEM_TYPE_FILE_REP;
      entry.item_count = 1;
      entry.items = &noderev_id;
      entry.fnv1_checksum = b->fnv1a_checksum;

      SVN_ERR(store_p2l_index_entry(b->fs, txn_id, &entry, b->local_pool));
    }

  SVN_ERR(svn_io_file_close(b->file, b->local_pool));



  if (!old_rep)
    SVN_ERR(store_sha1_rep_mapping(b->fs, b->noderev, b->local_pool));

  SVN_ERR(unlock_proto_rev(b->fs, txn_id, b->lockcookie, b->local_pool));
  svn_pool_destroy(b->local_pool);

  return SVN_NO_ERROR;
}
