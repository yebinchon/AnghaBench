#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_stream_t ;
typedef  int /*<<< orphan*/  svn_fs_t ;
struct TYPE_11__ {int /*<<< orphan*/  number; int /*<<< orphan*/  revision; } ;
struct TYPE_12__ {void* offset; int /*<<< orphan*/  fnv1_checksum; TYPE_1__ item; scalar_t__ type; void* size; } ;
typedef  TYPE_2__ svn_fs_fs__p2l_entry_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_checksum_ctx_t ;
typedef  scalar_t__ svn_boolean_t ;
struct write_container_baton {int /*<<< orphan*/  stream; scalar_t__ size; void* sha1_ctx; void* md5_ctx; } ;
struct TYPE_13__ {int /*<<< orphan*/  txn_id; int /*<<< orphan*/  item_index; scalar_t__ size; scalar_t__ expanded_size; } ;
typedef  TYPE_3__ representation_t ;
typedef  int /*<<< orphan*/  (* collection_writer_t ) (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ *) ;
typedef  scalar_t__ apr_uint32_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  void* apr_off_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_file_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ SVN_FS_FS__ITEM_TYPE_DIR_REP ; 
 int /*<<< orphan*/  SVN_INVALID_REVNUM ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*,int /*<<< orphan*/ *) ; 
 struct write_container_baton* FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,void*,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__**,int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ *,void*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *) ; 
 void* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_checksum_md5 ; 
 int /*<<< orphan*/  svn_checksum_sha1 ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (void**,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC13 (struct write_container_baton*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  write_container_handler ; 

__attribute__((used)) static svn_error_t *
FUNC17(representation_t *rep,
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

  FUNC0(FUNC11(&offset, file, scratch_pool));

  whb = FUNC2(scratch_pool, sizeof(*whb));

  whb->stream = FUNC14(file, TRUE, scratch_pool);
  if (FUNC10(fs))
    whb->stream = FUNC5(&fnv1a_checksum_ctx, whb->stream,
                                    scratch_pool);
  else
    fnv1a_checksum_ctx = NULL;
  whb->size = 0;
  whb->md5_ctx = FUNC9(svn_checksum_md5, scratch_pool);
  if (item_type != SVN_FS_FS__ITEM_TYPE_DIR_REP)
    whb->sha1_ctx = FUNC9(svn_checksum_sha1, scratch_pool);

  stream = FUNC13(whb, scratch_pool);
  FUNC16(stream, write_container_handler);

  FUNC0(FUNC15(whb->stream, "PLAIN\n"));

  FUNC0(writer(stream, collection, scratch_pool));

  /* Store the results. */
  FUNC0(FUNC3(rep, whb->md5_ctx, whb->sha1_ctx, scratch_pool));

  /* Update size info. */
  rep->expanded_size = whb->size;
  rep->size = whb->size;

  /* Check and see if we already have a representation somewhere that's
     identical to the one we just wrote out. */
  if (allow_rep_sharing)
    {
      representation_t *old_rep;
      FUNC0(FUNC6(&old_rep, fs, rep, file, offset, reps_hash,
                             scratch_pool, scratch_pool));

      if (old_rep)
        {
          /* We need to erase from the protorev the data we just wrote. */
          FUNC0(FUNC12(file, offset, scratch_pool));

          /* Use the old rep for this content. */
          FUNC7(rep, old_rep, sizeof (*rep));
          return SVN_NO_ERROR;
        }
    }

  /* Write out our cosmetic end marker. */
  FUNC0(FUNC15(whb->stream, "ENDREP\n"));

  FUNC0(FUNC1(&rep->item_index, fs, &rep->txn_id,
                              offset, scratch_pool));

  if (FUNC10(fs))
    {
      svn_fs_fs__p2l_entry_t entry;

      entry.offset = offset;
      FUNC0(FUNC11(&offset, file, scratch_pool));
      entry.size = offset - entry.offset;
      entry.type = item_type;
      entry.item.revision = SVN_INVALID_REVNUM;
      entry.item.number = rep->item_index;
      FUNC0(FUNC4(&entry.fnv1_checksum,
                                      fnv1a_checksum_ctx,
                                      scratch_pool));

      FUNC0(FUNC8(fs, &rep->txn_id, &entry, scratch_pool));
    }

  return SVN_NO_ERROR;
}