#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_stream_t ;
typedef  int /*<<< orphan*/  svn_packed__int_stream_t ;
typedef  int /*<<< orphan*/  svn_packed__data_root_t ;
typedef  int /*<<< orphan*/  svn_packed__byte_stream_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_7__ {size_t size; TYPE_3__* sub_tables; } ;
typedef  TYPE_2__ string_table_t ;
struct TYPE_8__ {size_t short_string_count; size_t long_string_count; TYPE_1__* long_strings; TYPE_4__* short_strings; scalar_t__ data_size; int /*<<< orphan*/  data; } ;
typedef  TYPE_3__ string_sub_table_t ;
struct TYPE_9__ {size_t head_string; size_t head_length; size_t tail_start; size_t tail_length; } ;
typedef  TYPE_4__ string_header_t ;
typedef  size_t apr_size_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_6__ {scalar_t__ len; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC8(svn_stream_t *stream,
                             const string_table_t *table,
                             apr_pool_t *scratch_pool)
{
  apr_size_t i, k;

  svn_packed__data_root_t *root = FUNC6(scratch_pool);

  svn_packed__int_stream_t *table_sizes
    = FUNC4(root, FALSE, FALSE);
  svn_packed__int_stream_t *small_strings_headers
    = FUNC4(root, FALSE, FALSE);
  svn_packed__byte_stream_t *large_strings
    = FUNC3(root);
  svn_packed__byte_stream_t *small_strings_data
    = FUNC3(root);

  FUNC5(small_strings_headers, TRUE, FALSE);
  FUNC5(small_strings_headers, FALSE, FALSE);
  FUNC5(small_strings_headers, TRUE, FALSE);
  FUNC5(small_strings_headers, FALSE, FALSE);

  /* number of sub-tables */

  FUNC2(table_sizes, table->size);

  /* all short-string char data sizes */

  for (i = 0; i < table->size; ++i)
    FUNC2(table_sizes,
                         table->sub_tables[i].short_string_count);

  for (i = 0; i < table->size; ++i)
    FUNC2(table_sizes,
                         table->sub_tables[i].long_string_count);

  /* all strings */

  for (i = 0; i < table->size; ++i)
    {
      string_sub_table_t *sub_table = &table->sub_tables[i];
      FUNC1(small_strings_data,
                            sub_table->data,
                            sub_table->data_size);

      for (k = 0; k < sub_table->short_string_count; ++k)
        {
          string_header_t *string = &sub_table->short_strings[k];

          FUNC2(small_strings_headers, string->head_string);
          FUNC2(small_strings_headers, string->head_length);
          FUNC2(small_strings_headers, string->tail_start);
          FUNC2(small_strings_headers, string->tail_length);
        }

      for (k = 0; k < sub_table->long_string_count; ++k)
        FUNC1(large_strings,
                              sub_table->long_strings[k].data,
                              sub_table->long_strings[k].len + 1);
    }

  /* write to target stream */

  FUNC0(FUNC7(stream, root, scratch_pool));

  return SVN_NO_ERROR;
}