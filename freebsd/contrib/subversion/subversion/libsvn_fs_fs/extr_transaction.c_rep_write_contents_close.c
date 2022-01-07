
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int number; void* revision; } ;
struct TYPE_13__ {void* offset; int fnv1_checksum; TYPE_1__ item; int type; void* size; } ;
typedef TYPE_2__ svn_fs_fs__p2l_entry_t ;
typedef int svn_error_t ;
struct rep_write_baton {void* delta_start; void* rep_offset; int scratch_pool; int lockcookie; int fs; TYPE_4__* noderev; int file; int fnv1a_checksum_ctx; int rep_stream; int result_pool; int sha1_checksum_ctx; int md5_checksum_ctx; int rep_size; scalar_t__ delta_stream; } ;
struct TYPE_14__ {int txn_id; int item_index; void* revision; int expanded_size; void* size; } ;
typedef TYPE_3__ representation_t ;
typedef void* apr_off_t ;
struct TYPE_15__ {int id; TYPE_3__* data_rep; } ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int SVN_FS_FS__ITEM_TYPE_FILE_REP ;
 void* SVN_INVALID_REVNUM ;
 int * SVN_NO_ERROR ;
 int allocate_item_index (int *,int ,int *,void*,int ) ;
 TYPE_3__* apr_pcalloc (int ,int) ;
 int apr_pool_cleanup_kill (int ,struct rep_write_baton*,int ) ;
 int digests_final (TYPE_3__*,int ,int ,int ) ;
 int fnv1a_checksum_finalize (int *,int ,int ) ;
 int get_shared_rep (TYPE_3__**,int ,TYPE_3__*,int ,void*,int *,int ,int ) ;
 int rep_write_cleanup ;
 int set_uniquifier (int ,TYPE_3__*,int ) ;
 int store_p2l_index_entry (int ,int *,TYPE_2__*,int ) ;
 int store_sha1_rep_mapping (int ,TYPE_4__*,int ) ;
 int * svn_fs_fs__id_txn_id (int ) ;
 int svn_fs_fs__put_node_revision (int ,int ,TYPE_4__*,int ,int ) ;
 scalar_t__ svn_fs_fs__use_log_addressing (int ) ;
 int svn_io_file_close (int ,int ) ;
 int svn_io_file_get_offset (void**,int ,int ) ;
 int svn_io_file_trunc (int ,void*,int ) ;
 int svn_pool_destroy (int ) ;
 int svn_stream_close (scalar_t__) ;
 int svn_stream_puts (int ,char*) ;
 int unlock_proto_rev (int ,int *,int ,int ) ;

__attribute__((used)) static svn_error_t *
rep_write_contents_close(void *baton)
{
  struct rep_write_baton *b = baton;
  representation_t *rep;
  representation_t *old_rep;
  apr_off_t offset;

  rep = apr_pcalloc(b->result_pool, sizeof(*rep));



  if (b->delta_stream)
    SVN_ERR(svn_stream_close(b->delta_stream));


  SVN_ERR(svn_io_file_get_offset(&offset, b->file, b->scratch_pool));
  rep->size = offset - b->delta_start;


  rep->expanded_size = b->rep_size;
  rep->txn_id = *svn_fs_fs__id_txn_id(b->noderev->id);
  SVN_ERR(set_uniquifier(b->fs, rep, b->scratch_pool));
  rep->revision = SVN_INVALID_REVNUM;


  SVN_ERR(digests_final(rep, b->md5_checksum_ctx, b->sha1_checksum_ctx,
                        b->result_pool));



  SVN_ERR(get_shared_rep(&old_rep, b->fs, rep, b->file, b->rep_offset, ((void*)0),
                         b->result_pool, b->scratch_pool));

  if (old_rep)
    {

      SVN_ERR(svn_io_file_trunc(b->file, b->rep_offset, b->scratch_pool));


      b->noderev->data_rep = old_rep;
    }
  else
    {

      SVN_ERR(svn_stream_puts(b->rep_stream, "ENDREP\n"));
      SVN_ERR(allocate_item_index(&rep->item_index, b->fs, &rep->txn_id,
                                  b->rep_offset, b->scratch_pool));

      b->noderev->data_rep = rep;
    }


  apr_pool_cleanup_kill(b->scratch_pool, b, rep_write_cleanup);


  SVN_ERR(svn_fs_fs__put_node_revision(b->fs, b->noderev->id, b->noderev,
                                       FALSE, b->scratch_pool));
  if (!old_rep && svn_fs_fs__use_log_addressing(b->fs))
    {
      svn_fs_fs__p2l_entry_t entry;

      entry.offset = b->rep_offset;
      SVN_ERR(svn_io_file_get_offset(&offset, b->file, b->scratch_pool));
      entry.size = offset - b->rep_offset;
      entry.type = SVN_FS_FS__ITEM_TYPE_FILE_REP;
      entry.item.revision = SVN_INVALID_REVNUM;
      entry.item.number = rep->item_index;
      SVN_ERR(fnv1a_checksum_finalize(&entry.fnv1_checksum,
                                      b->fnv1a_checksum_ctx,
                                      b->scratch_pool));

      SVN_ERR(store_p2l_index_entry(b->fs, &rep->txn_id, &entry,
                                    b->scratch_pool));
    }

  SVN_ERR(svn_io_file_close(b->file, b->scratch_pool));



  if (!old_rep)
    SVN_ERR(store_sha1_rep_mapping(b->fs, b->noderev, b->scratch_pool));

  SVN_ERR(unlock_proto_rev(b->fs, &rep->txn_id, b->lockcookie,
                           b->scratch_pool));
  svn_pool_destroy(b->scratch_pool);

  return SVN_NO_ERROR;
}
