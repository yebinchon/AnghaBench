
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int svn_txdelta_window_handler_t ;
typedef int svn_stream_t ;
typedef int svn_fs_t ;
struct TYPE_9__ {int type; int base_length; int base_item_index; int base_revision; int member_0; } ;
typedef TYPE_1__ svn_fs_fs__rep_header_t ;
typedef int svn_error_t ;
struct rep_write_baton {int scratch_pool; int delta_stream; int rep_stream; int delta_start; int rep_offset; int fnv1a_checksum_ctx; int * file; int lockcookie; TYPE_3__* noderev; scalar_t__ rep_size; int * result_pool; int * fs; void* md5_checksum_ctx; void* sha1_checksum_ctx; } ;
struct TYPE_10__ {int size; int item_index; int revision; } ;
typedef TYPE_2__ representation_t ;
struct TYPE_11__ {int id; } ;
typedef TYPE_3__ node_revision_t ;
typedef int apr_pool_t ;
typedef int apr_file_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 struct rep_write_baton* apr_pcalloc (int *,int) ;
 int apr_pool_cleanup_null ;
 int apr_pool_cleanup_register (int ,struct rep_write_baton*,int ,int ) ;
 int choose_delta_base (TYPE_2__**,int *,TYPE_3__*,int ,int ) ;
 int fnv1a_wrap_stream (int *,int ,int ) ;
 int get_writable_proto_rev (int **,int *,int *,int ,int ) ;
 int rep_write_cleanup ;
 void* svn_checksum_ctx_create (int ,int *) ;
 int svn_checksum_md5 ;
 int svn_checksum_sha1 ;
 int svn_fs_fs__get_contents (int **,int *,TYPE_2__*,int ,int ) ;
 int svn_fs_fs__id_txn_id (int ) ;
 int svn_fs_fs__rep_delta ;
 int svn_fs_fs__rep_self_delta ;
 scalar_t__ svn_fs_fs__use_log_addressing (int *) ;
 int svn_fs_fs__write_rep_header (TYPE_1__*,int ,int ) ;
 int svn_io_file_get_offset (int *,int *,int ) ;
 int svn_pool_create (int *) ;
 int svn_stream_from_aprfile2 (int *,int ,int ) ;
 int svn_txdelta_target_push (int ,void*,int *,int ) ;
 int txdelta_to_svndiff (int *,void**,int ,int *,int *) ;

__attribute__((used)) static svn_error_t *
rep_write_get_baton(struct rep_write_baton **wb_p,
                    svn_fs_t *fs,
                    node_revision_t *noderev,
                    apr_pool_t *pool)
{
  struct rep_write_baton *b;
  apr_file_t *file;
  representation_t *base_rep;
  svn_stream_t *source;
  svn_txdelta_window_handler_t wh;
  void *whb;
  svn_fs_fs__rep_header_t header = { 0 };

  b = apr_pcalloc(pool, sizeof(*b));

  b->sha1_checksum_ctx = svn_checksum_ctx_create(svn_checksum_sha1, pool);
  b->md5_checksum_ctx = svn_checksum_ctx_create(svn_checksum_md5, pool);

  b->fs = fs;
  b->result_pool = pool;
  b->scratch_pool = svn_pool_create(pool);
  b->rep_size = 0;
  b->noderev = noderev;


  SVN_ERR(get_writable_proto_rev(&file, &b->lockcookie,
                                 fs, svn_fs_fs__id_txn_id(noderev->id),
                                 b->scratch_pool));

  b->file = file;
  b->rep_stream = svn_stream_from_aprfile2(file, TRUE, b->scratch_pool);
  if (svn_fs_fs__use_log_addressing(fs))
    b->rep_stream = fnv1a_wrap_stream(&b->fnv1a_checksum_ctx, b->rep_stream,
                                      b->scratch_pool);

  SVN_ERR(svn_io_file_get_offset(&b->rep_offset, file, b->scratch_pool));


  SVN_ERR(choose_delta_base(&base_rep, fs, noderev, FALSE, b->scratch_pool));
  SVN_ERR(svn_fs_fs__get_contents(&source, fs, base_rep, TRUE,
                                  b->scratch_pool));


  if (base_rep)
    {
      header.base_revision = base_rep->revision;
      header.base_item_index = base_rep->item_index;
      header.base_length = base_rep->size;
      header.type = svn_fs_fs__rep_delta;
    }
  else
    {
      header.type = svn_fs_fs__rep_self_delta;
    }
  SVN_ERR(svn_fs_fs__write_rep_header(&header, b->rep_stream,
                                      b->scratch_pool));


  SVN_ERR(svn_io_file_get_offset(&b->delta_start, file,
                                 b->scratch_pool));


  apr_pool_cleanup_register(b->scratch_pool, b, rep_write_cleanup,
                            apr_pool_cleanup_null);


  txdelta_to_svndiff(&wh, &whb, b->rep_stream, fs, pool);

  b->delta_stream = svn_txdelta_target_push(wh, whb, source,
                                            b->scratch_pool);

  *wb_p = b;

  return SVN_NO_ERROR;
}
