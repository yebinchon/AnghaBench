#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_9__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_txdelta_window_t ;
typedef  int /*<<< orphan*/  svn_stream_t ;
typedef  int /*<<< orphan*/  svn_fs_x__revision_file_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int svn_boolean_t ;
struct TYPE_11__ {int /*<<< orphan*/  change_set; } ;
struct TYPE_10__ {int chunk_index; scalar_t__ start; scalar_t__ current; scalar_t__ size; int /*<<< orphan*/  ver; TYPE_5__ rep_id; TYPE_9__* sfile; scalar_t__ window_cache; } ;
typedef  TYPE_1__ rep_state_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  void* apr_off_t ;
typedef  int /*<<< orphan*/  apr_file_t ;
struct TYPE_12__ {int /*<<< orphan*/  fs; int /*<<< orphan*/ * rfile; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  SVN_ERR_FS_CORRUPT ; 
 int /*<<< orphan*/  SVN_FS_X__ITEM_TYPE_ANY_REP ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_5__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,TYPE_5__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,TYPE_1__*,int,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,TYPE_1__*,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (void**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (void**,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC22(svn_txdelta_window_t **nwin, int this_chunk,
                  rep_state_t *rs, apr_pool_t *result_pool,
                  apr_pool_t *scratch_pool)
{
  svn_boolean_t is_cached;
  apr_off_t start_offset;
  apr_off_t end_offset;
  apr_pool_t *iterpool;
  svn_stream_t *stream;
  svn_fs_x__revision_file_t *file;
  svn_boolean_t cacheable = rs->chunk_index == 0
                         && FUNC11(rs->rep_id.change_set)
                         && rs->window_cache;

  FUNC1(rs->chunk_index <= this_chunk);

  FUNC0(FUNC7(rs->sfile->fs, &rs->rep_id, NULL,
                          SVN_FS_X__ITEM_TYPE_ANY_REP, scratch_pool));

  /* Read the next window.  But first, try to find it in the cache. */
  if (cacheable)
    {
      FUNC0(FUNC8(nwin, rs, this_chunk, &is_cached,
                                result_pool, scratch_pool));
      if (is_cached)
        return SVN_NO_ERROR;
    }

  /* someone has to actually read the data from file.  Open it */
  FUNC0(FUNC3(rs->sfile));
  file = rs->sfile->rfile;

  /* invoke the 'block-read' feature for non-txn data.
     However, don't do that if we are in the middle of some representation,
     because the block is unlikely to contain other data. */
  if (cacheable)
    {
      FUNC0(FUNC6(NULL, rs->sfile->fs, &rs->rep_id, file, NULL,
                         result_pool, scratch_pool));

      /* reading the whole block probably also provided us with the
         desired txdelta window */
      FUNC0(FUNC8(nwin, rs, this_chunk, &is_cached,
                                result_pool, scratch_pool));
      if (is_cached)
        return SVN_NO_ERROR;
    }

  /* data is still not cached -> we need to read it.
     Make sure we have all the necessary info. */
  FUNC0(FUNC5(rs, scratch_pool));
  FUNC0(FUNC4(rs, scratch_pool));

  /* RS->FILE may be shared between RS instances -> make sure we point
   * to the right data. */
  start_offset = rs->start + rs->current;
  FUNC0(FUNC14(file, NULL, start_offset));

  /* Skip windows to reach the current chunk if we aren't there yet. */
  iterpool = FUNC18(scratch_pool);
  while (rs->chunk_index < this_chunk)
    {
      apr_file_t *apr_file;
      FUNC17(iterpool);

      FUNC0(FUNC12(&apr_file, file));
      FUNC0(FUNC21(apr_file, rs->ver, iterpool));
      rs->chunk_index++;
      FUNC0(FUNC16(&start_offset, apr_file, iterpool));

      rs->current = start_offset - rs->start;
      if (rs->current >= rs->size)
        return FUNC10(SVN_ERR_FS_CORRUPT, NULL,
                                FUNC2("Reading one svndiff window read "
                                  "beyond the end of the "
                                  "representation"));
    }
  FUNC19(iterpool);

  /* Actually read the next window. */
  FUNC0(FUNC15(&stream, file));
  FUNC0(FUNC20(nwin, stream, rs->ver,
                                          result_pool));
  FUNC0(FUNC13(&end_offset, file));
  rs->current = end_offset - rs->start;
  if (rs->current > rs->size)
    return FUNC10(SVN_ERR_FS_CORRUPT, NULL,
                            FUNC2("Reading one svndiff window read beyond "
                              "the end of the representation"));

  /* the window has not been cached before, thus cache it now
   * (if caching is used for them at all) */
  if (cacheable)
    FUNC0(FUNC9(*nwin, rs, start_offset, scratch_pool));

  return SVN_NO_ERROR;
}