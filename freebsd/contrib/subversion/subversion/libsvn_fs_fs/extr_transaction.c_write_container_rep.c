
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int svn_stream_t ;
typedef int svn_fs_t ;
struct TYPE_11__ {int number; int revision; } ;
struct TYPE_12__ {void* offset; int fnv1_checksum; TYPE_1__ item; scalar_t__ type; void* size; } ;
typedef TYPE_2__ svn_fs_fs__p2l_entry_t ;
typedef int svn_error_t ;
typedef int svn_checksum_ctx_t ;
typedef scalar_t__ svn_boolean_t ;
struct write_container_baton {int stream; scalar_t__ size; void* sha1_ctx; void* md5_ctx; } ;
struct TYPE_13__ {int txn_id; int item_index; scalar_t__ size; scalar_t__ expanded_size; } ;
typedef TYPE_3__ representation_t ;
typedef int (* collection_writer_t ) (int *,void*,int *) ;
typedef scalar_t__ apr_uint32_t ;
typedef int apr_pool_t ;
typedef void* apr_off_t ;
typedef int apr_hash_t ;
typedef int apr_file_t ;


 int SVN_ERR (int ) ;
 scalar_t__ SVN_FS_FS__ITEM_TYPE_DIR_REP ;
 int SVN_INVALID_REVNUM ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int allocate_item_index (int *,int *,int *,void*,int *) ;
 struct write_container_baton* apr_pcalloc (int *,int) ;
 int digests_final (TYPE_3__*,void*,void*,int *) ;
 int fnv1a_checksum_finalize (int *,int *,int *) ;
 int fnv1a_wrap_stream (int **,int ,int *) ;
 int get_shared_rep (TYPE_3__**,int *,TYPE_3__*,int *,void*,int *,int *,int *) ;
 int memcpy (TYPE_3__*,TYPE_3__*,int) ;
 int store_p2l_index_entry (int *,int *,TYPE_2__*,int *) ;
 void* svn_checksum_ctx_create (int ,int *) ;
 int svn_checksum_md5 ;
 int svn_checksum_sha1 ;
 scalar_t__ svn_fs_fs__use_log_addressing (int *) ;
 int svn_io_file_get_offset (void**,int *,int *) ;
 int svn_io_file_trunc (int *,void*,int *) ;
 int * svn_stream_create (struct write_container_baton*,int *) ;
 int svn_stream_from_aprfile2 (int *,int ,int *) ;
 int svn_stream_puts (int ,char*) ;
 int svn_stream_set_write (int *,int ) ;
 int write_container_handler ;

__attribute__((used)) static svn_error_t *
write_container_rep(representation_t *rep,
                    apr_file_t *file,
                    void *collection,
                    collection_writer_t writer,
                    svn_fs_t *fs,
                    apr_hash_t *reps_hash,
                    svn_boolean_t allow_rep_sharing,
                    apr_uint32_t item_type,
                    apr_pool_t *scratch_pool)
{
  svn_stream_t *stream;
  struct write_container_baton *whb;
  svn_checksum_ctx_t *fnv1a_checksum_ctx;
  apr_off_t offset = 0;

  SVN_ERR(svn_io_file_get_offset(&offset, file, scratch_pool));

  whb = apr_pcalloc(scratch_pool, sizeof(*whb));

  whb->stream = svn_stream_from_aprfile2(file, TRUE, scratch_pool);
  if (svn_fs_fs__use_log_addressing(fs))
    whb->stream = fnv1a_wrap_stream(&fnv1a_checksum_ctx, whb->stream,
                                    scratch_pool);
  else
    fnv1a_checksum_ctx = ((void*)0);
  whb->size = 0;
  whb->md5_ctx = svn_checksum_ctx_create(svn_checksum_md5, scratch_pool);
  if (item_type != SVN_FS_FS__ITEM_TYPE_DIR_REP)
    whb->sha1_ctx = svn_checksum_ctx_create(svn_checksum_sha1, scratch_pool);

  stream = svn_stream_create(whb, scratch_pool);
  svn_stream_set_write(stream, write_container_handler);

  SVN_ERR(svn_stream_puts(whb->stream, "PLAIN\n"));

  SVN_ERR(writer(stream, collection, scratch_pool));


  SVN_ERR(digests_final(rep, whb->md5_ctx, whb->sha1_ctx, scratch_pool));


  rep->expanded_size = whb->size;
  rep->size = whb->size;



  if (allow_rep_sharing)
    {
      representation_t *old_rep;
      SVN_ERR(get_shared_rep(&old_rep, fs, rep, file, offset, reps_hash,
                             scratch_pool, scratch_pool));

      if (old_rep)
        {

          SVN_ERR(svn_io_file_trunc(file, offset, scratch_pool));


          memcpy(rep, old_rep, sizeof (*rep));
          return SVN_NO_ERROR;
        }
    }


  SVN_ERR(svn_stream_puts(whb->stream, "ENDREP\n"));

  SVN_ERR(allocate_item_index(&rep->item_index, fs, &rep->txn_id,
                              offset, scratch_pool));

  if (svn_fs_fs__use_log_addressing(fs))
    {
      svn_fs_fs__p2l_entry_t entry;

      entry.offset = offset;
      SVN_ERR(svn_io_file_get_offset(&offset, file, scratch_pool));
      entry.size = offset - entry.offset;
      entry.type = item_type;
      entry.item.revision = SVN_INVALID_REVNUM;
      entry.item.number = rep->item_index;
      SVN_ERR(fnv1a_checksum_finalize(&entry.fnv1_checksum,
                                      fnv1a_checksum_ctx,
                                      scratch_pool));

      SVN_ERR(store_p2l_index_entry(fs, &rep->txn_id, &entry, scratch_pool));
    }

  return SVN_NO_ERROR;
}
