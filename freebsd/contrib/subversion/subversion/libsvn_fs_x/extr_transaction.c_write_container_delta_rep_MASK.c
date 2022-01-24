#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_35__   TYPE_8__ ;
typedef  struct TYPE_34__   TYPE_7__ ;
typedef  struct TYPE_33__   TYPE_6__ ;
typedef  struct TYPE_32__   TYPE_5__ ;
typedef  struct TYPE_31__   TYPE_4__ ;
typedef  struct TYPE_30__   TYPE_3__ ;
typedef  struct TYPE_29__   TYPE_2__ ;
typedef  struct TYPE_28__   TYPE_1__ ;

/* Type definitions */
struct TYPE_29__ {scalar_t__ size; void* sha1_ctx; void* md5_ctx; int /*<<< orphan*/ * stream; } ;
typedef  TYPE_2__ write_container_baton_t ;
typedef  int /*<<< orphan*/  svn_txdelta_window_handler_t ;
typedef  int /*<<< orphan*/  svn_stream_t ;
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_fs_x__txn_id_t ;
struct TYPE_28__ {int /*<<< orphan*/  number; int /*<<< orphan*/  change_set; } ;
struct TYPE_30__ {void* size; TYPE_1__ id; scalar_t__ expanded_size; } ;
typedef  TYPE_3__ svn_fs_x__representation_t ;
struct TYPE_31__ {int /*<<< orphan*/  type; void* base_length; int /*<<< orphan*/  base_item_index; int /*<<< orphan*/  base_revision; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_4__ svn_fs_x__rep_header_t ;
struct TYPE_32__ {void* offset; int item_count; TYPE_6__* items; scalar_t__ type; void* size; int /*<<< orphan*/  fnv1_checksum; } ;
typedef  TYPE_5__ svn_fs_x__p2l_entry_t ;
typedef  int /*<<< orphan*/  svn_fs_x__noderev_t ;
struct TYPE_33__ {int /*<<< orphan*/  number; int /*<<< orphan*/  change_set; } ;
typedef  TYPE_6__ svn_fs_x__id_t ;
struct TYPE_34__ {int /*<<< orphan*/  delta_compression_level; } ;
typedef  TYPE_7__ svn_fs_x__data_t ;
struct TYPE_35__ {TYPE_7__* fsap_data; } ;
typedef  TYPE_8__ svn_fs_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int svn_boolean_t ;
typedef  int /*<<< orphan*/  (* collection_writer_t ) (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ *) ;
typedef  scalar_t__ apr_uint32_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  void* apr_off_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_file_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_FS_X__INVALID_CHANGE_SET ; 
 scalar_t__ SVN_FS_X__ITEM_TYPE_DIR_PROPS ; 
 scalar_t__ SVN_FS_X__ITEM_TYPE_DIR_REP ; 
 scalar_t__ SVN_FS_X__ITEM_TYPE_FILE_PROPS ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_8__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__**,TYPE_8__*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,void*,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__**,TYPE_8__*,int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ *,void*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_8__*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_8__*,int /*<<< orphan*/ ,TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_checksum_md5 ; 
 int /*<<< orphan*/  svn_checksum_sha1 ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ **,TYPE_8__*,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  svn_fs_x__rep_delta ; 
 int /*<<< orphan*/  svn_fs_x__rep_self_delta ; 
 int /*<<< orphan*/  FUNC13 (TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (void**,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC17 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC22 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,void**,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  write_container_handler ; 

__attribute__((used)) static svn_error_t *
FUNC24(svn_fs_x__representation_t *rep,
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
  svn_fs_x__representation_t *old_rep = NULL;
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

  /* Get the base for this delta. */
  FUNC0(FUNC3(&base_rep, fs, noderev, is_props, scratch_pool));
  FUNC0(FUNC11(&source, fs, base_rep, FALSE, scratch_pool));

  FUNC0(FUNC14(&offset, file, scratch_pool));

  /* Write out the rep header. */
  if (base_rep)
    {
      header.base_revision = FUNC12(base_rep->id.change_set);
      header.base_item_index = base_rep->id.number;
      header.base_length = base_rep->size;
      header.type = svn_fs_x__rep_delta;
    }
  else
    {
      header.type = svn_fs_x__rep_self_delta;
    }

  file_stream = FUNC9(
                                  &entry.fnv1_checksum,
                                  FUNC19(file, TRUE,
                                                           scratch_pool),
                                  scratch_pool);
  FUNC0(FUNC13(&header, file_stream, scratch_pool));
  FUNC0(FUNC14(&delta_start, file, scratch_pool));

  /* Prepare to write the svndiff data. */
  FUNC23(&diff_wh,
                          &diff_whb,
                          FUNC18(file_stream, scratch_pool),
                          diff_version,
                          ffd->delta_compression_level,
                          scratch_pool);

  whb = FUNC2(scratch_pool, sizeof(*whb));
  whb->stream = FUNC22(diff_wh, diff_whb, source,
                                        scratch_pool);
  whb->size = 0;
  whb->md5_ctx = FUNC10(svn_checksum_md5, scratch_pool);
  if (item_type != SVN_FS_X__ITEM_TYPE_DIR_REP)
    whb->sha1_ctx = FUNC10(svn_checksum_sha1, scratch_pool);

  /* serialize the hash */
  stream = FUNC17(whb, scratch_pool);
  FUNC21(stream, write_container_handler);

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
    FUNC0(FUNC5(&old_rep, fs, txn_id, rep, file, offset, reps_hash,
                           scratch_pool, scratch_pool));

  if (old_rep)
    {
      FUNC0(FUNC16(file_stream));

      /* We need to erase from the protorev the data we just wrote. */
      FUNC0(FUNC15(file, offset, scratch_pool));

      /* Use the old rep for this content. */
      FUNC6(rep, old_rep, sizeof (*rep));
    }
  else
    {
      svn_fs_x__id_t noderev_id;

      /* Write out our cosmetic end marker. */
      FUNC0(FUNC20(file_stream, "ENDREP\n"));
      FUNC0(FUNC16(file_stream));

      FUNC0(FUNC1(&rep->id.number, fs, txn_id,
                                  scratch_pool));
      FUNC0(FUNC7(fs, txn_id, offset, rep->id.number,
                                    scratch_pool));

      noderev_id.change_set = SVN_FS_X__INVALID_CHANGE_SET;
      noderev_id.number = rep->id.number;

      entry.offset = offset;
      FUNC0(FUNC14(&offset, file, scratch_pool));
      entry.size = offset - entry.offset;
      entry.type = item_type;
      entry.item_count = 1;
      entry.items = &noderev_id;

      FUNC0(FUNC8(fs, txn_id, &entry, scratch_pool));

      /* update the representation */
      rep->size = rep_end - delta_start;
    }

  return SVN_NO_ERROR;
}