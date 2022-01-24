#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_txdelta_window_handler_t ;
typedef  int /*<<< orphan*/  svn_stream_t ;
typedef  int /*<<< orphan*/  svn_fs_t ;
struct TYPE_16__ {int /*<<< orphan*/  type; void* base_length; int /*<<< orphan*/  base_item_index; int /*<<< orphan*/  base_revision; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_2__ svn_fs_fs__rep_header_t ;
struct TYPE_15__ {int /*<<< orphan*/  number; int /*<<< orphan*/  revision; } ;
struct TYPE_17__ {void* offset; int /*<<< orphan*/  fnv1_checksum; TYPE_1__ item; scalar_t__ type; void* size; } ;
typedef  TYPE_3__ svn_fs_fs__p2l_entry_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_checksum_ctx_t ;
typedef  int svn_boolean_t ;
struct write_container_baton {scalar_t__ size; void* sha1_ctx; void* md5_ctx; int /*<<< orphan*/  stream; } ;
struct TYPE_18__ {int /*<<< orphan*/  txn_id; int /*<<< orphan*/  item_index; scalar_t__ expanded_size; void* size; int /*<<< orphan*/  revision; } ;
typedef  TYPE_4__ representation_t ;
typedef  int /*<<< orphan*/  node_revision_t ;
typedef  int /*<<< orphan*/  (* collection_writer_t ) (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ *) ;
typedef  scalar_t__ apr_uint32_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  void* apr_off_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_file_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ SVN_FS_FS__ITEM_TYPE_DIR_PROPS ; 
 scalar_t__ SVN_FS_FS__ITEM_TYPE_DIR_REP ; 
 scalar_t__ SVN_FS_FS__ITEM_TYPE_FILE_PROPS ; 
 int /*<<< orphan*/  SVN_INVALID_REVNUM ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*,int /*<<< orphan*/ *) ; 
 struct write_container_baton* FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,void*,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__**,int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ *,void*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ *) ; 
 void* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_checksum_md5 ; 
 int /*<<< orphan*/  svn_checksum_sha1 ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_fs_fs__rep_delta ; 
 int /*<<< orphan*/  svn_fs_fs__rep_self_delta ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (void**,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC17 (struct write_container_baton*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,void**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  write_container_handler ; 

__attribute__((used)) static svn_error_t *
FUNC23(representation_t *rep,
                          apr_file_t *file,
                          void *collection,
                          collection_writer_t writer,
                          svn_fs_t *fs,
                          node_revision_t *noderev,
                          apr_hash_t *reps_hash,
                          svn_boolean_t allow_rep_sharing,
                          apr_uint32_t item_type,
                          apr_pool_t *scratch_pool)
{
  svn_txdelta_window_handler_t diff_wh;
  void *diff_whb;

  svn_stream_t *file_stream;
  svn_stream_t *stream;
  representation_t *base_rep;
  svn_checksum_ctx_t *fnv1a_checksum_ctx;
  svn_stream_t *source;
  svn_fs_fs__rep_header_t header = { 0 };

  apr_off_t rep_end = 0;
  apr_off_t delta_start = 0;
  apr_off_t offset = 0;

  struct write_container_baton *whb;
  svn_boolean_t is_props = (item_type == SVN_FS_FS__ITEM_TYPE_FILE_PROPS)
                        || (item_type == SVN_FS_FS__ITEM_TYPE_DIR_PROPS);

  /* Get the base for this delta. */
  FUNC0(FUNC3(&base_rep, fs, noderev, is_props, scratch_pool));
  FUNC0(FUNC11(&source, fs, base_rep, FALSE, scratch_pool));

  FUNC0(FUNC14(&offset, file, scratch_pool));

  /* Write out the rep header. */
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

  file_stream = FUNC18(file, TRUE, scratch_pool);
  if (FUNC12(fs))
    file_stream = FUNC6(&fnv1a_checksum_ctx, file_stream,
                                    scratch_pool);
  else
    fnv1a_checksum_ctx = NULL;
  FUNC0(FUNC13(&header, file_stream, scratch_pool));
  FUNC0(FUNC14(&delta_start, file, scratch_pool));

  /* Prepare to write the svndiff data. */
  FUNC22(&diff_wh, &diff_whb, file_stream, fs, scratch_pool);

  whb = FUNC2(scratch_pool, sizeof(*whb));
  whb->stream = FUNC21(diff_wh, diff_whb, source,
                                        scratch_pool);
  whb->size = 0;
  whb->md5_ctx = FUNC10(svn_checksum_md5, scratch_pool);
  if (item_type != SVN_FS_FS__ITEM_TYPE_DIR_REP)
    whb->sha1_ctx = FUNC10(svn_checksum_sha1, scratch_pool);

  /* serialize the hash */
  stream = FUNC17(whb, scratch_pool);
  FUNC20(stream, write_container_handler);

  FUNC0(writer(stream, collection, scratch_pool));
  FUNC0(FUNC16(whb->stream));

  /* Store the results. */
  FUNC0(FUNC4(rep, whb->md5_ctx, whb->sha1_ctx, scratch_pool));

  /* Update size info. */
  FUNC0(FUNC14(&rep_end, file, scratch_pool));
  rep->size = rep_end - delta_start;
  rep->expanded_size = whb->size;

  /* Check and see if we already have a representation somewhere that's
     identical to the one we just wrote out. */
  if (allow_rep_sharing)
    {
      representation_t *old_rep;
      FUNC0(FUNC7(&old_rep, fs, rep, file, offset, reps_hash,
                             scratch_pool, scratch_pool));

      if (old_rep)
        {
          /* We need to erase from the protorev the data we just wrote. */
          FUNC0(FUNC15(file, offset, scratch_pool));

          /* Use the old rep for this content. */
          FUNC8(rep, old_rep, sizeof (*rep));
          return SVN_NO_ERROR;
        }
    }

  /* Write out our cosmetic end marker. */
  FUNC0(FUNC19(file_stream, "ENDREP\n"));

  FUNC0(FUNC1(&rep->item_index, fs, &rep->txn_id,
                              offset, scratch_pool));

  if (FUNC12(fs))
    {
      svn_fs_fs__p2l_entry_t entry;

      entry.offset = offset;
      FUNC0(FUNC14(&offset, file, scratch_pool));
      entry.size = offset - entry.offset;
      entry.type = item_type;
      entry.item.revision = SVN_INVALID_REVNUM;
      entry.item.number = rep->item_index;
      FUNC0(FUNC5(&entry.fnv1_checksum,
                                      fnv1a_checksum_ctx,
                                      scratch_pool));

      FUNC0(FUNC9(fs, &rep->txn_id, &entry, scratch_pool));
    }

  return SVN_NO_ERROR;
}