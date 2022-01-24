#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_7__ ;
typedef  struct TYPE_12__   TYPE_1__ ;
typedef  struct TYPE_11__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_txdelta_window_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ svn_boolean_t ;
struct TYPE_12__ {int chunk_index; scalar_t__ start; scalar_t__ current; scalar_t__ size; int /*<<< orphan*/  revision; int /*<<< orphan*/  ver; TYPE_10__* sfile; int /*<<< orphan*/  item_index; scalar_t__ raw_window_cache; } ;
typedef  TYPE_1__ rep_state_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  void* apr_off_t ;
struct TYPE_13__ {int /*<<< orphan*/  stream; int /*<<< orphan*/  file; } ;
struct TYPE_11__ {TYPE_7__* rfile; int /*<<< orphan*/  fs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  SVN_ERR_FS_CORRUPT ; 
 int /*<<< orphan*/  SVN_FS_FS__ITEM_TYPE_ANY_REP ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_10__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_7__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ **,TYPE_1__*,int,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (void**,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int /*<<< orphan*/ *,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static svn_error_t *
FUNC20(svn_txdelta_window_t **nwin, int this_chunk,
                  rep_state_t *rs, apr_pool_t *result_pool,
                  apr_pool_t *scratch_pool)
{
  svn_boolean_t is_cached;
  apr_off_t start_offset;
  apr_off_t end_offset;
  apr_pool_t *iterpool;

  FUNC1(rs->chunk_index <= this_chunk);

  FUNC0(FUNC8(rs->sfile->fs, rs->revision, rs->item_index,
                         NULL, SVN_FS_FS__ITEM_TYPE_ANY_REP, scratch_pool));

  /* Read the next window.  But first, try to find it in the cache. */
  FUNC0(FUNC9(nwin, rs, this_chunk, &is_cached,
                            result_pool, scratch_pool));
  if (is_cached)
    return SVN_NO_ERROR;

  /* someone has to actually read the data from file.  Open it */
  FUNC0(FUNC4(rs->sfile));

  /* invoke the 'block-read' feature for non-txn data.
     However, don't do that if we are in the middle of some representation,
     because the block is unlikely to contain other data. */
  if (   rs->chunk_index == 0
      && FUNC2(rs->revision)
      && FUNC19(rs->sfile->fs)
      && rs->raw_window_cache)
    {
      FUNC0(FUNC7(NULL, rs->sfile->fs, rs->revision, rs->item_index,
                         rs->sfile->rfile, result_pool, scratch_pool));

      /* reading the whole block probably also provided us with the
         desired txdelta window */
      FUNC0(FUNC9(nwin, rs, this_chunk, &is_cached,
                                result_pool, scratch_pool));
      if (is_cached)
        return SVN_NO_ERROR;
    }

  /* data is still not cached -> we need to read it.
     Make sure we have all the necessary info. */
  FUNC0(FUNC6(rs, scratch_pool));
  FUNC0(FUNC5(rs, scratch_pool));

  /* RS->FILE may be shared between RS instances -> make sure we point
   * to the right data. */
  start_offset = rs->start + rs->current;
  FUNC0(FUNC11(rs, NULL, start_offset, scratch_pool));

  /* Skip windows to reach the current chunk if we aren't there yet. */
  iterpool = FUNC15(scratch_pool);
  while (rs->chunk_index < this_chunk)
    {
      FUNC14(iterpool);
      FUNC0(FUNC18(rs->sfile->rfile->file,
                                              rs->ver, iterpool));
      rs->chunk_index++;
      FUNC0(FUNC10(&start_offset, rs, iterpool));
      rs->current = start_offset - rs->start;
      if (rs->current >= rs->size)
        return FUNC13(SVN_ERR_FS_CORRUPT, NULL,
                                FUNC3("Reading one svndiff window read "
                                  "beyond the end of the "
                                  "representation"));
    }
  FUNC16(iterpool);

  /* Actually read the next window. */
  FUNC0(FUNC17(nwin, rs->sfile->rfile->stream,
                                          rs->ver, result_pool));
  FUNC0(FUNC10(&end_offset, rs, scratch_pool));
  rs->current = end_offset - rs->start;
  if (rs->current > rs->size)
    return FUNC13(SVN_ERR_FS_CORRUPT, NULL,
                            FUNC3("Reading one svndiff window read beyond "
                              "the end of the representation"));

  /* the window has not been cached before, thus cache it now
   * (if caching is used for them at all) */
  if (FUNC2(rs->revision))
    FUNC0(FUNC12(*nwin, rs, scratch_pool));

  return SVN_NO_ERROR;
}