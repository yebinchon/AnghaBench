#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_fs_x__revision_file_t ;
typedef  int /*<<< orphan*/  svn_fs_x__packed_number_stream_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_5__ {scalar_t__ offset; int entry_count; scalar_t__ size; } ;
typedef  TYPE_1__ l2p_page_table_entry_t ;
struct TYPE_6__ {int entry_count; int* offsets; int* sub_items; } ;
typedef  TYPE_2__ l2p_page_t ;
typedef  int apr_uint64_t ;
typedef  int apr_uint32_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  void* apr_off_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_FS_INDEX_CORRUPTION ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 void* FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC8(l2p_page_t **page,
             svn_fs_x__revision_file_t *rev_file,
             l2p_page_table_entry_t *table_entry,
             apr_pool_t *result_pool)
{
  apr_uint64_t value, last_value = 0;
  apr_uint32_t i;
  l2p_page_t *result = FUNC2(result_pool, sizeof(*result));
  apr_uint64_t container_count;
  apr_off_t *container_offsets;
  svn_fs_x__packed_number_stream_t *stream;

  /* open index file and select page */
  FUNC0(FUNC7(&stream, rev_file));
  FUNC5(stream, table_entry->offset);

  /* initialize the page content */
  result->entry_count = table_entry->entry_count;
  result->offsets = FUNC2(result_pool, result->entry_count
                                           * sizeof(*result->offsets));
  result->sub_items = FUNC2(result_pool, result->entry_count
                                             * sizeof(*result->sub_items));

  /* container offsets array */

  FUNC0(FUNC3(&container_count, stream));
  container_offsets = FUNC2(result_pool,
                                  container_count * sizeof(*result));
  for (i = 0; i < container_count; ++i)
    {
      FUNC0(FUNC3(&value, stream));
      last_value += value;
      container_offsets[i] = (apr_off_t)last_value - 1;
      /* '-1' is represented as '0' in the index file */
    }

  /* read all page entries (offsets in rev file and container sub-items) */
  for (i = 0; i < result->entry_count; ++i)
    {
      FUNC0(FUNC3(&value, stream));
      if (value == 0)
        {
          result->offsets[i] = -1;
          result->sub_items[i] = 0;
        }
      else if (value <= container_count)
        {
          result->offsets[i] = container_offsets[value - 1];
          FUNC0(FUNC3(&value, stream));
          result->sub_items[i] = (apr_uint32_t)value;
        }
      else
        {
          result->offsets[i] = (apr_off_t)(value - 1 - container_count);
          result->sub_items[i] = 0;
        }
    }

  /* After reading all page entries, the read cursor must have moved by
   * TABLE_ENTRY->SIZE bytes. */
  if (   FUNC4(stream)
      != table_entry->offset + table_entry->size)
    return FUNC6(SVN_ERR_FS_INDEX_CORRUPTION, NULL,
                FUNC1("L2P actual page size does not match page table value."));

  *page = result;

  return SVN_NO_ERROR;
}