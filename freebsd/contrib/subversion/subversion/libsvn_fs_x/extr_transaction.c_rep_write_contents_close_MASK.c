#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_7__ ;
typedef  struct TYPE_20__   TYPE_6__ ;
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {int /*<<< orphan*/  number; int /*<<< orphan*/  change_set; } ;
struct TYPE_17__ {TYPE_2__ id; int /*<<< orphan*/  expanded_size; void* size; } ;
typedef  TYPE_3__ svn_fs_x__representation_t ;
struct TYPE_18__ {void* offset; int item_count; int /*<<< orphan*/  fnv1_checksum; TYPE_5__* items; int /*<<< orphan*/  type; void* size; } ;
typedef  TYPE_4__ svn_fs_x__p2l_entry_t ;
struct TYPE_19__ {int /*<<< orphan*/  number; int /*<<< orphan*/  change_set; } ;
typedef  TYPE_5__ svn_fs_x__id_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_20__ {void* delta_start; void* rep_offset; int /*<<< orphan*/  local_pool; int /*<<< orphan*/  lockcookie; int /*<<< orphan*/  fs; TYPE_7__* noderev; int /*<<< orphan*/  file; int /*<<< orphan*/  fnv1a_checksum; int /*<<< orphan*/  rep_stream; int /*<<< orphan*/  result_pool; int /*<<< orphan*/  sha1_checksum_ctx; int /*<<< orphan*/  md5_checksum_ctx; int /*<<< orphan*/  rep_size; int /*<<< orphan*/  delta_stream; } ;
typedef  TYPE_6__ rep_write_baton_t ;
typedef  void* apr_off_t ;
typedef  int /*<<< orphan*/  apr_int64_t ;
struct TYPE_15__ {int /*<<< orphan*/  change_set; } ;
struct TYPE_21__ {TYPE_3__* data_rep; TYPE_1__ noderev_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_FS_X__INVALID_CHANGE_SET ; 
 int /*<<< orphan*/  SVN_FS_X__ITEM_TYPE_FILE_REP ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rep_write_cleanup ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,TYPE_7__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,TYPE_7__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (void**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static svn_error_t *
FUNC19(void *baton)
{
  rep_write_baton_t *b = baton;
  svn_fs_x__representation_t *rep;
  svn_fs_x__representation_t *old_rep;
  apr_off_t offset;
  apr_int64_t txn_id;

  rep = FUNC2(b->result_pool, sizeof(*rep));

  /* Close our delta stream so the last bits of svndiff are written
     out. */
  FUNC0(FUNC16(b->delta_stream));

  /* Determine the length of the svndiff data. */
  FUNC0(FUNC13(&offset, b->file, b->local_pool));
  rep->size = offset - b->delta_start;

  /* Fill in the rest of the representation field. */
  rep->expanded_size = b->rep_size;
  txn_id = FUNC10(b->noderev->noderev_id.change_set);
  rep->id.change_set = FUNC9(txn_id);

  /* Finalize the checksum. */
  FUNC0(FUNC4(rep, b->md5_checksum_ctx, b->sha1_checksum_ctx,
                        b->result_pool));

  /* Check and see if we already have a representation somewhere that's
     identical to the one we just wrote out. */
  FUNC0(FUNC5(&old_rep, b->fs, txn_id, rep, b->file, b->rep_offset,
                         NULL, b->result_pool, b->local_pool));

  if (old_rep)
    {
      /* We need to erase from the protorev the data we just wrote. */
      FUNC0(FUNC14(b->file, b->rep_offset, b->local_pool));

      /* Use the old rep for this content. */
      b->noderev->data_rep = old_rep;
    }
  else
    {
      /* Write out our cosmetic end marker. */
      FUNC0(FUNC17(b->rep_stream, "ENDREP\n"));
      FUNC0(FUNC1(&rep->id.number, b->fs, txn_id,
                                  b->local_pool));
      FUNC0(FUNC6(b->fs, txn_id, b->rep_offset,
                                    rep->id.number, b->local_pool));

      b->noderev->data_rep = rep;
    }

  FUNC0(FUNC16(b->rep_stream));

  /* Remove cleanup callback. */
  FUNC3(b->local_pool, b, rep_write_cleanup);

  /* Write out the new node-rev information. */
  FUNC0(FUNC11(b->fs, b->noderev, b->local_pool));
  if (!old_rep)
    {
      svn_fs_x__p2l_entry_t entry;
      svn_fs_x__id_t noderev_id;
      noderev_id.change_set = SVN_FS_X__INVALID_CHANGE_SET;
      noderev_id.number = rep->id.number;

      entry.offset = b->rep_offset;
      FUNC0(FUNC13(&offset, b->file, b->local_pool));
      entry.size = offset - b->rep_offset;
      entry.type = SVN_FS_X__ITEM_TYPE_FILE_REP;
      entry.item_count = 1;
      entry.items = &noderev_id;
      entry.fnv1_checksum = b->fnv1a_checksum;

      FUNC0(FUNC7(b->fs, txn_id, &entry, b->local_pool));
    }

  FUNC0(FUNC12(b->file, b->local_pool));

  /* Write the sha1->rep mapping *after* we successfully written node
   * revision to disk. */
  if (!old_rep)
    FUNC0(FUNC8(b->fs, b->noderev, b->local_pool));

  FUNC0(FUNC18(b->fs, txn_id, b->lockcookie, b->local_pool));
  FUNC15(b->local_pool);

  return SVN_NO_ERROR;
}