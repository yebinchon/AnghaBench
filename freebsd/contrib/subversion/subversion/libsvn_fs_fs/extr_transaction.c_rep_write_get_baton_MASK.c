#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_txdelta_window_handler_t ;
typedef  int /*<<< orphan*/  svn_stream_t ;
typedef  int /*<<< orphan*/  svn_fs_t ;
struct TYPE_9__ {int /*<<< orphan*/  type; int /*<<< orphan*/  base_length; int /*<<< orphan*/  base_item_index; int /*<<< orphan*/  base_revision; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ svn_fs_fs__rep_header_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct rep_write_baton {int /*<<< orphan*/  scratch_pool; int /*<<< orphan*/  delta_stream; int /*<<< orphan*/  rep_stream; int /*<<< orphan*/  delta_start; int /*<<< orphan*/  rep_offset; int /*<<< orphan*/  fnv1a_checksum_ctx; int /*<<< orphan*/ * file; int /*<<< orphan*/  lockcookie; TYPE_3__* noderev; scalar_t__ rep_size; int /*<<< orphan*/ * result_pool; int /*<<< orphan*/ * fs; void* md5_checksum_ctx; void* sha1_checksum_ctx; } ;
struct TYPE_10__ {int /*<<< orphan*/  size; int /*<<< orphan*/  item_index; int /*<<< orphan*/  revision; } ;
typedef  TYPE_2__ representation_t ;
struct TYPE_11__ {int /*<<< orphan*/  id; } ;
typedef  TYPE_3__ node_revision_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_file_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 struct rep_write_baton* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  apr_pool_cleanup_null ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct rep_write_baton*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__**,int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rep_write_cleanup ; 
 void* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_checksum_md5 ; 
 int /*<<< orphan*/  svn_checksum_sha1 ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  svn_fs_fs__rep_delta ; 
 int /*<<< orphan*/  svn_fs_fs__rep_self_delta ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,void**,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC16(struct rep_write_baton **wb_p,
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

  b = FUNC1(pool, sizeof(*b));

  b->sha1_checksum_ctx = FUNC6(svn_checksum_sha1, pool);
  b->md5_checksum_ctx = FUNC6(svn_checksum_md5, pool);

  b->fs = fs;
  b->result_pool = pool;
  b->scratch_pool = FUNC12(pool);
  b->rep_size = 0;
  b->noderev = noderev;

  /* Open the prototype rev file and seek to its end. */
  FUNC0(FUNC5(&file, &b->lockcookie,
                                 fs, FUNC8(noderev->id),
                                 b->scratch_pool));

  b->file = file;
  b->rep_stream = FUNC13(file, TRUE, b->scratch_pool);
  if (FUNC9(fs))
    b->rep_stream = FUNC4(&b->fnv1a_checksum_ctx, b->rep_stream,
                                      b->scratch_pool);

  FUNC0(FUNC11(&b->rep_offset, file, b->scratch_pool));

  /* Get the base for this delta. */
  FUNC0(FUNC3(&base_rep, fs, noderev, FALSE, b->scratch_pool));
  FUNC0(FUNC7(&source, fs, base_rep, TRUE,
                                  b->scratch_pool));

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
  FUNC0(FUNC10(&header, b->rep_stream,
                                      b->scratch_pool));

  /* Now determine the offset of the actual svndiff data. */
  FUNC0(FUNC11(&b->delta_start, file,
                                 b->scratch_pool));

  /* Cleanup in case something goes wrong. */
  FUNC2(b->scratch_pool, b, rep_write_cleanup,
                            apr_pool_cleanup_null);

  /* Prepare to write the svndiff data. */
  FUNC15(&wh, &whb, b->rep_stream, fs, pool);

  b->delta_stream = FUNC14(wh, whb, source,
                                            b->scratch_pool);

  *wb_p = b;

  return SVN_NO_ERROR;
}