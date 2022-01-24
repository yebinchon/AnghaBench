#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_28__   TYPE_8__ ;
typedef  struct TYPE_27__   TYPE_7__ ;
typedef  struct TYPE_26__   TYPE_6__ ;
typedef  struct TYPE_25__   TYPE_5__ ;
typedef  struct TYPE_24__   TYPE_4__ ;
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_txdelta_window_handler_t ;
typedef  int /*<<< orphan*/  svn_stream_t ;
typedef  int /*<<< orphan*/  svn_fs_x__txn_id_t ;
struct TYPE_22__ {int /*<<< orphan*/  number; int /*<<< orphan*/  change_set; } ;
struct TYPE_23__ {int /*<<< orphan*/  size; TYPE_2__ id; } ;
typedef  TYPE_3__ svn_fs_x__representation_t ;
struct TYPE_24__ {int /*<<< orphan*/  type; int /*<<< orphan*/  base_length; int /*<<< orphan*/  base_item_index; int /*<<< orphan*/  base_revision; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_4__ svn_fs_x__rep_header_t ;
struct TYPE_21__ {int /*<<< orphan*/  change_set; } ;
struct TYPE_25__ {TYPE_1__ noderev_id; } ;
typedef  TYPE_5__ svn_fs_x__noderev_t ;
struct TYPE_26__ {int /*<<< orphan*/  delta_compression_level; } ;
typedef  TYPE_6__ svn_fs_x__data_t ;
struct TYPE_27__ {TYPE_6__* fsap_data; } ;
typedef  TYPE_7__ svn_fs_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_28__ {int /*<<< orphan*/ * result_pool; int /*<<< orphan*/  delta_stream; int /*<<< orphan*/  rep_stream; int /*<<< orphan*/  local_pool; int /*<<< orphan*/  delta_start; int /*<<< orphan*/  rep_offset; int /*<<< orphan*/  fnv1a_checksum; int /*<<< orphan*/ * file; int /*<<< orphan*/  lockcookie; TYPE_5__* noderev; scalar_t__ rep_size; TYPE_7__* fs; void* md5_checksum_ctx; void* sha1_checksum_ctx; } ;
typedef  TYPE_8__ rep_write_baton_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_file_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 TYPE_8__* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  apr_pool_cleanup_null ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_8__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__**,TYPE_7__*,TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,TYPE_7__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rep_write_cleanup ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_checksum_md5 ; 
 int /*<<< orphan*/  svn_checksum_sha1 ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,TYPE_7__*,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  svn_fs_x__rep_delta ; 
 int /*<<< orphan*/  svn_fs_x__rep_self_delta ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,void**,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC17(rep_write_baton_t **wb_p,
                    svn_fs_t *fs,
                    svn_fs_x__noderev_t *noderev,
                    apr_pool_t *result_pool)
{
  svn_fs_x__data_t *ffd = fs->fsap_data;
  rep_write_baton_t *b;
  apr_file_t *file;
  svn_fs_x__representation_t *base_rep;
  svn_stream_t *source;
  svn_txdelta_window_handler_t wh;
  void *whb;
  int diff_version = 1;
  svn_fs_x__rep_header_t header = { 0 };
  svn_fs_x__txn_id_t txn_id
    = FUNC9(noderev->noderev_id.change_set);

  b = FUNC1(result_pool, sizeof(*b));

  b->sha1_checksum_ctx = FUNC6(svn_checksum_sha1,
                                                 result_pool);
  b->md5_checksum_ctx = FUNC6(svn_checksum_md5,
                                                result_pool);

  b->fs = fs;
  b->result_pool = result_pool;
  b->local_pool = FUNC12(result_pool);
  b->rep_size = 0;
  b->noderev = noderev;

  /* Open the prototype rev file and seek to its end. */
  FUNC0(FUNC4(&file, &b->lockcookie, fs, txn_id,
                                 b->local_pool));

  b->file = file;
  b->rep_stream = FUNC5(
                              &b->fnv1a_checksum,
                              FUNC14(file, TRUE,
                                                       b->local_pool),
                              b->local_pool);

  FUNC0(FUNC11(&b->rep_offset, file, b->local_pool));

  /* Get the base for this delta. */
  FUNC0(FUNC3(&base_rep, fs, noderev, FALSE, b->local_pool));
  FUNC0(FUNC7(&source, fs, base_rep, TRUE,
                                 b->local_pool));

  /* Write out the rep header. */
  if (base_rep)
    {
      header.base_revision = FUNC8(base_rep->id.change_set);
      header.base_item_index = base_rep->id.number;
      header.base_length = base_rep->size;
      header.type = svn_fs_x__rep_delta;
    }
  else
    {
      header.type = svn_fs_x__rep_self_delta;
    }
  FUNC0(FUNC10(&header, b->rep_stream,
                                     b->local_pool));

  /* Now determine the offset of the actual svndiff data. */
  FUNC0(FUNC11(&b->delta_start, file, b->local_pool));

  /* Cleanup in case something goes wrong. */
  FUNC2(b->local_pool, b, rep_write_cleanup,
                            apr_pool_cleanup_null);

  /* Prepare to write the svndiff data. */
  FUNC16(&wh,
                          &whb,
                          FUNC13(b->rep_stream, b->result_pool),
                          diff_version,
                          ffd->delta_compression_level,
                          result_pool);

  b->delta_stream = FUNC15(wh, whb, source,
                                            b->result_pool);

  *wb_p = b;

  return SVN_NO_ERROR;
}