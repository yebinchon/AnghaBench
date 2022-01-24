#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  len; void* data; } ;
typedef  TYPE_1__ svn_string_t ;
typedef  int /*<<< orphan*/  svn_stream_t ;
typedef  int /*<<< orphan*/  svn_packed__int_stream_t ;
typedef  int /*<<< orphan*/  svn_packed__data_root_t ;
typedef  int /*<<< orphan*/  svn_packed__byte_stream_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_8__ {size_t size; TYPE_3__* sub_tables; } ;
typedef  TYPE_2__ string_table_t ;
struct TYPE_9__ {size_t short_string_count; int long_string_count; TYPE_1__* long_strings; int /*<<< orphan*/  data_size; void* data; TYPE_4__* short_strings; } ;
typedef  TYPE_3__ string_sub_table_t ;
struct TYPE_10__ {void* tail_length; void* tail_start; void* head_length; void* head_string; } ;
typedef  TYPE_4__ string_header_t ;
typedef  void* apr_uint16_t ;
typedef  size_t apr_size_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ *,int) ; 
 void* FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 void* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC10(string_table_t **table_p,
                            svn_stream_t *stream,
                            apr_pool_t *result_pool,
                            apr_pool_t *scratch_pool)
{
  apr_size_t i, k;

  string_table_t *table = FUNC1(result_pool, sizeof(*table));

  svn_packed__data_root_t *root;
  svn_packed__int_stream_t *table_sizes;
  svn_packed__byte_stream_t *large_strings;
  svn_packed__byte_stream_t *small_strings_data;
  svn_packed__int_stream_t *headers;

  FUNC0(FUNC3(&root, stream, result_pool, scratch_pool));
  table_sizes = FUNC5(root);
  headers = FUNC9(table_sizes);
  large_strings = FUNC4(root);
  small_strings_data = FUNC8(large_strings);

  /* create sub-tables */

  table->size = (apr_size_t)FUNC7(table_sizes);
  table->sub_tables = FUNC2(result_pool,
                                  table->size * sizeof(*table->sub_tables));

  /* read short strings */

  for (i = 0; i < table->size; ++i)
    {
      string_sub_table_t *sub_table = &table->sub_tables[i];

      sub_table->short_string_count
        = (apr_size_t)FUNC7(table_sizes);
      if (sub_table->short_string_count)
        {
          sub_table->short_strings
            = FUNC2(result_pool, sub_table->short_string_count
                                    * sizeof(*sub_table->short_strings));

          /* read short string headers */

          for (k = 0; k < sub_table->short_string_count; ++k)
            {
              string_header_t *string = &sub_table->short_strings[k];

              string->head_string = (apr_uint16_t)FUNC7(headers);
              string->head_length = (apr_uint16_t)FUNC7(headers);
              string->tail_start = (apr_uint16_t)FUNC7(headers);
              string->tail_length = (apr_uint16_t)FUNC7(headers);
            }
        }

      sub_table->data = FUNC6(small_strings_data,
                                              &sub_table->data_size);
    }

  /* read long strings */

  for (i = 0; i < table->size; ++i)
    {
      /* initialize long string table */
      string_sub_table_t *sub_table = &table->sub_tables[i];

      sub_table->long_string_count = FUNC7(table_sizes);
      if (sub_table->long_string_count)
        {
          sub_table->long_strings
            = FUNC2(result_pool, sub_table->long_string_count
                                    * sizeof(*sub_table->long_strings));

          /* read long strings */

          for (k = 0; k < sub_table->long_string_count; ++k)
            {
              svn_string_t *string = &sub_table->long_strings[k];
              string->data = FUNC6(large_strings,
                                                   &string->len);
              string->len--;
            }
        }
    }

  /* done */

  *table_p = table;

  return SVN_NO_ERROR;
}