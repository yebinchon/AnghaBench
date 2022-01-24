#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  number; void* revision; } ;
struct TYPE_13__ {void* offset; int /*<<< orphan*/  fnv1_checksum; TYPE_1__ item; int /*<<< orphan*/  type; void* size; } ;
typedef  TYPE_2__ svn_fs_fs__p2l_entry_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct rep_write_baton {void* delta_start; void* rep_offset; int /*<<< orphan*/  scratch_pool; int /*<<< orphan*/  lockcookie; int /*<<< orphan*/  fs; TYPE_4__* noderev; int /*<<< orphan*/  file; int /*<<< orphan*/  fnv1a_checksum_ctx; int /*<<< orphan*/  rep_stream; int /*<<< orphan*/  result_pool; int /*<<< orphan*/  sha1_checksum_ctx; int /*<<< orphan*/  md5_checksum_ctx; int /*<<< orphan*/  rep_size; scalar_t__ delta_stream; } ;
struct TYPE_14__ {int /*<<< orphan*/  txn_id; int /*<<< orphan*/  item_index; void* revision; int /*<<< orphan*/  expanded_size; void* size; } ;
typedef  TYPE_3__ representation_t ;
typedef  void* apr_off_t ;
struct TYPE_15__ {int /*<<< orphan*/  id; TYPE_3__* data_rep; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_FS_FS__ITEM_TYPE_FILE_REP ; 
 void* SVN_INVALID_REVNUM ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct rep_write_baton*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__**,int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rep_write_cleanup ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (void**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static svn_error_t *
FUNC20(void *baton)
{
  struct rep_write_baton *b = baton;
  representation_t *rep;
  representation_t *old_rep;
  apr_off_t offset;

  rep = FUNC2(b->result_pool, sizeof(*rep));

  /* Close our delta stream so the last bits of svndiff are written
     out. */
  if (b->delta_stream)
    FUNC0(FUNC17(b->delta_stream));

  /* Determine the length of the svndiff data. */
  FUNC0(FUNC14(&offset, b->file, b->scratch_pool));
  rep->size = offset - b->delta_start;

  /* Fill in the rest of the representation field. */
  rep->expanded_size = b->rep_size;
  rep->txn_id = *FUNC10(b->noderev->id);
  FUNC0(FUNC7(b->fs, rep, b->scratch_pool));
  rep->revision = SVN_INVALID_REVNUM;

  /* Finalize the checksum. */
  FUNC0(FUNC4(rep, b->md5_checksum_ctx, b->sha1_checksum_ctx,
                        b->result_pool));

  /* Check and see if we already have a representation somewhere that's
     identical to the one we just wrote out. */
  FUNC0(FUNC6(&old_rep, b->fs, rep, b->file, b->rep_offset, NULL,
                         b->result_pool, b->scratch_pool));

  if (old_rep)
    {
      /* We need to erase from the protorev the data we just wrote. */
      FUNC0(FUNC15(b->file, b->rep_offset, b->scratch_pool));

      /* Use the old rep for this content. */
      b->noderev->data_rep = old_rep;
    }
  else
    {
      /* Write out our cosmetic end marker. */
      FUNC0(FUNC18(b->rep_stream, "ENDREP\n"));
      FUNC0(FUNC1(&rep->item_index, b->fs, &rep->txn_id,
                                  b->rep_offset, b->scratch_pool));

      b->noderev->data_rep = rep;
    }

  /* Remove cleanup callback. */
  FUNC3(b->scratch_pool, b, rep_write_cleanup);

  /* Write out the new node-rev information. */
  FUNC0(FUNC11(b->fs, b->noderev->id, b->noderev,
                                       FALSE, b->scratch_pool));
  if (!old_rep && FUNC12(b->fs))
    {
      svn_fs_fs__p2l_entry_t entry;

      entry.offset = b->rep_offset;
      FUNC0(FUNC14(&offset, b->file, b->scratch_pool));
      entry.size = offset - b->rep_offset;
      entry.type = SVN_FS_FS__ITEM_TYPE_FILE_REP;
      entry.item.revision = SVN_INVALID_REVNUM;
      entry.item.number = rep->item_index;
      FUNC0(FUNC5(&entry.fnv1_checksum,
                                      b->fnv1a_checksum_ctx,
                                      b->scratch_pool));

      FUNC0(FUNC8(b->fs, &rep->txn_id, &entry,
                                    b->scratch_pool));
    }

  FUNC0(FUNC13(b->file, b->scratch_pool));

  /* Write the sha1->rep mapping *after* we successfully written node
   * revision to disk. */
  if (!old_rep)
    FUNC0(FUNC9(b->fs, b->noderev, b->scratch_pool));

  FUNC0(FUNC19(b->fs, &rep->txn_id, b->lockcookie,
                           b->scratch_pool));
  FUNC16(b->scratch_pool);

  return SVN_NO_ERROR;
}