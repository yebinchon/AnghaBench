#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_fs_t ;
struct TYPE_4__ {int /*<<< orphan*/  p2l_stream; } ;
typedef  TYPE_1__ svn_fs_fs__revision_file_t ;
typedef  int /*<<< orphan*/  svn_fs_fs__p2l_entry_t ;
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
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static svn_error_t *
FUNC9(apr_array_header_t **entries,
             svn_fs_fs__revision_file_t *rev_file,
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
    = FUNC2(result_pool, 16, sizeof(svn_fs_fs__p2l_entry_t));
  apr_off_t item_offset;
  apr_off_t offset;
  svn_revnum_t last_revision;
  apr_uint64_t last_compound;

  /* open index and navigate to page start */
  FUNC0(FUNC3(rev_file, fs, start_revision));
  FUNC6(rev_file->p2l_stream, start_offset);

  /* read rev file offset of the first page entry (all page entries will
   * only store their sizes). */
  FUNC0(FUNC4(&value, rev_file->p2l_stream));
  item_offset = (apr_off_t)value;

  /* read all entries of this page */
  last_revision = start_revision;
  last_compound = 0;

  /* Special case: empty pages. */
  if (start_offset == next_offset)
    {
      /* Empty page. This only happens if the first entry of the next page
       * also covers this page (and possibly more) completely. */
      FUNC0(FUNC7(rev_file->p2l_stream, &item_offset,
                         &last_revision, &last_compound, result));
    }
  else
    {
      /* Read non-empty page. */
      do
        {
          FUNC0(FUNC7(rev_file->p2l_stream, &item_offset,
                             &last_revision, &last_compound, result));
          offset = FUNC5(rev_file->p2l_stream);
        }
      while (offset < next_offset);

      /* We should now be exactly at the next offset, i.e. the numbers in
       * the stream cannot overlap into the next page description. */
      if (offset != next_offset)
        return FUNC8(SVN_ERR_FS_INDEX_CORRUPTION, NULL,
             FUNC1("P2L page description overlaps with next page description"));

      /* if we haven't covered the cluster end yet, we must read the first
       * entry of the next page */
      if (item_offset < page_start + page_size)
        {
          FUNC0(FUNC4(&value, rev_file->p2l_stream));
          item_offset = (apr_off_t)value;
          last_revision = start_revision;
          last_compound = 0;
          FUNC0(FUNC7(rev_file->p2l_stream, &item_offset,
                             &last_revision, &last_compound, result));
        }
    }

  *entries = result;

  return SVN_NO_ERROR;
}