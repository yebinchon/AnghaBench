#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {scalar_t__ packed_len; scalar_t__ target_len; } ;
typedef  TYPE_2__ window_sizes_t ;
struct TYPE_13__ {scalar_t__ tview_len; } ;
typedef  TYPE_3__ svn_txdelta_window_t ;
typedef  int /*<<< orphan*/  svn_stream_t ;
typedef  int /*<<< orphan*/  svn_fs_x__revision_file_t ;
typedef  int /*<<< orphan*/  svn_fs_t ;
typedef  scalar_t__ svn_filesize_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ svn_boolean_t ;
struct TYPE_14__ {int current; int size; int start; int /*<<< orphan*/  chunk_index; TYPE_1__* sfile; int /*<<< orphan*/  ver; } ;
typedef  TYPE_4__ rep_state_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int apr_off_t ;
struct TYPE_11__ {int /*<<< orphan*/ * rfile; } ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_FS_CORRUPT ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__**,TYPE_4__*,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,TYPE_4__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC12(svn_filesize_t *fulltext_len,
              svn_fs_t *fs,
              rep_state_t *rs,
              apr_off_t max_offset,
              apr_pool_t *scratch_pool)
{
  apr_pool_t *iterpool = FUNC9(scratch_pool);
  *fulltext_len = 0;

  while (rs->current < rs->size)
    {
      svn_boolean_t is_cached = FALSE;
      window_sizes_t *window_sizes;

      FUNC8(iterpool);
      if (max_offset != -1 && rs->start + rs->current >= max_offset)
        {
          FUNC10(iterpool);
          return SVN_NO_ERROR;
        }

      /* efficiently skip windows that are still being cached instead
       * of fully decoding them */
      FUNC0(FUNC2(&window_sizes, rs, &is_cached,
                                      iterpool));
      if (is_cached)
        {
          *fulltext_len += window_sizes->target_len;
          rs->current += window_sizes->packed_len;
        }
      else
        {
          svn_txdelta_window_t *window;
          svn_fs_x__revision_file_t *file = rs->sfile->rfile;
          svn_stream_t *stream;
          apr_off_t start_offset = rs->start + rs->current;
          apr_off_t end_offset;
          apr_off_t block_start;

          /* navigate to & read the current window */
          FUNC0(FUNC7(&stream, file));
          FUNC0(FUNC6(file, &block_start, start_offset));
          FUNC0(FUNC11(&window, stream, rs->ver,
                                                  iterpool));

          /* aggregate expanded window size */
          *fulltext_len += window->tview_len;

          /* determine on-disk window size */
          FUNC0(FUNC5(&end_offset, rs->sfile->rfile));
          rs->current = end_offset - rs->start;
          if (rs->current > rs->size)
            return FUNC4(SVN_ERR_FS_CORRUPT, NULL,
                          FUNC1("Reading one svndiff window read beyond "
                                      "the end of the representation"));

          /* if the window has not been cached before, cache it now
           * (if caching is used for them at all) */
          if (!is_cached)
            FUNC0(FUNC3(window, rs, start_offset, iterpool));
        }

      rs->chunk_index++;
    }

  FUNC10(iterpool);

  return SVN_NO_ERROR;
}