#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_fs_x__revision_file_t ;
typedef  int /*<<< orphan*/  svn_fs_x__packed_number_stream_t ;
typedef  int /*<<< orphan*/  svn_fs_x__p2l_entry_t ;
typedef  int /*<<< orphan*/  svn_fs_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ apr_uint64_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  scalar_t__ apr_off_t ;
typedef  int /*<<< orphan*/  apr_array_header_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_FS_INDEX_CORRUPTION ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC9(apr_array_header_t **entries,
             svn_fs_x__revision_file_t *rev_file,
             svn_fs_t *fs,
             svn_revnum_t start_revision,
             apr_off_t start_offset,
             apr_off_t next_offset,
             apr_off_t page_start,
             apr_uint64_t page_size,
             apr_pool_t *result_pool)
{
  apr_uint64_t value;
  apr_array_header_t *result
    = FUNC2(result_pool, 16, sizeof(svn_fs_x__p2l_entry_t));
  apr_off_t item_offset;
  apr_off_t offset;
  svn_fs_x__packed_number_stream_t *stream;

  /* open index and navigate to page start */
  FUNC0(FUNC8(&stream, rev_file));
  FUNC5(stream, start_offset);

  /* read rev file offset of the first page entry (all page entries will
   * only store their sizes). */
  FUNC0(FUNC3(&value, stream));
  item_offset = (apr_off_t)value;

  /* Special case: empty pages. */
  if (start_offset == next_offset)
    {
      /* Empty page. This only happens if the first entry of the next page
       * also covers this page (and possibly more) completely. */
      FUNC0(FUNC6(stream, &item_offset, start_revision, result));
    }
  else
    {
      /* Read non-empty page. */
      do
        {
          FUNC0(FUNC6(stream, &item_offset, start_revision, result));
          offset = FUNC4(stream);
        }
      while (offset < next_offset);

      /* We should now be exactly at the next offset, i.e. the numbers in
       * the stream cannot overlap into the next page description. */
      if (offset != next_offset)
        return FUNC7(SVN_ERR_FS_INDEX_CORRUPTION, NULL,
             FUNC1("P2L page description overlaps with next page description"));

      /* if we haven't covered the cluster end yet, we must read the first
       * entry of the next page */
      if (item_offset < page_start + page_size)
        {
          FUNC0(FUNC3(&value, stream));
          item_offset = (apr_off_t)value;
          FUNC0(FUNC6(stream, &item_offset,
                             start_revision, result));
        }
    }

  *entries = result;

  return SVN_NO_ERROR;
}