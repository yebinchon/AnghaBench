
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int len; void* data; } ;
typedef TYPE_1__ svn_string_t ;
typedef int svn_stream_t ;
typedef int svn_packed__int_stream_t ;
typedef int svn_packed__data_root_t ;
typedef int svn_packed__byte_stream_t ;
typedef int svn_error_t ;
struct TYPE_8__ {size_t size; TYPE_3__* sub_tables; } ;
typedef TYPE_2__ string_table_t ;
struct TYPE_9__ {size_t short_string_count; int long_string_count; TYPE_1__* long_strings; int data_size; void* data; TYPE_4__* short_strings; } ;
typedef TYPE_3__ string_sub_table_t ;
struct TYPE_10__ {void* tail_length; void* tail_start; void* head_length; void* head_string; } ;
typedef TYPE_4__ string_header_t ;
typedef void* apr_uint16_t ;
typedef size_t apr_size_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 TYPE_2__* apr_palloc (int *,int) ;
 void* apr_pcalloc (int *,int) ;
 int svn_packed__data_read (int **,int *,int *,int *) ;
 int * svn_packed__first_byte_stream (int *) ;
 int * svn_packed__first_int_stream (int *) ;
 void* svn_packed__get_bytes (int *,int *) ;
 int svn_packed__get_uint (int *) ;
 int * svn_packed__next_byte_stream (int *) ;
 int * svn_packed__next_int_stream (int *) ;

svn_error_t *
svn_fs_x__read_string_table(string_table_t **table_p,
                            svn_stream_t *stream,
                            apr_pool_t *result_pool,
                            apr_pool_t *scratch_pool)
{
  apr_size_t i, k;

  string_table_t *table = apr_palloc(result_pool, sizeof(*table));

  svn_packed__data_root_t *root;
  svn_packed__int_stream_t *table_sizes;
  svn_packed__byte_stream_t *large_strings;
  svn_packed__byte_stream_t *small_strings_data;
  svn_packed__int_stream_t *headers;

  SVN_ERR(svn_packed__data_read(&root, stream, result_pool, scratch_pool));
  table_sizes = svn_packed__first_int_stream(root);
  headers = svn_packed__next_int_stream(table_sizes);
  large_strings = svn_packed__first_byte_stream(root);
  small_strings_data = svn_packed__next_byte_stream(large_strings);



  table->size = (apr_size_t)svn_packed__get_uint(table_sizes);
  table->sub_tables = apr_pcalloc(result_pool,
                                  table->size * sizeof(*table->sub_tables));



  for (i = 0; i < table->size; ++i)
    {
      string_sub_table_t *sub_table = &table->sub_tables[i];

      sub_table->short_string_count
        = (apr_size_t)svn_packed__get_uint(table_sizes);
      if (sub_table->short_string_count)
        {
          sub_table->short_strings
            = apr_pcalloc(result_pool, sub_table->short_string_count
                                    * sizeof(*sub_table->short_strings));



          for (k = 0; k < sub_table->short_string_count; ++k)
            {
              string_header_t *string = &sub_table->short_strings[k];

              string->head_string = (apr_uint16_t)svn_packed__get_uint(headers);
              string->head_length = (apr_uint16_t)svn_packed__get_uint(headers);
              string->tail_start = (apr_uint16_t)svn_packed__get_uint(headers);
              string->tail_length = (apr_uint16_t)svn_packed__get_uint(headers);
            }
        }

      sub_table->data = svn_packed__get_bytes(small_strings_data,
                                              &sub_table->data_size);
    }



  for (i = 0; i < table->size; ++i)
    {

      string_sub_table_t *sub_table = &table->sub_tables[i];

      sub_table->long_string_count = svn_packed__get_uint(table_sizes);
      if (sub_table->long_string_count)
        {
          sub_table->long_strings
            = apr_pcalloc(result_pool, sub_table->long_string_count
                                    * sizeof(*sub_table->long_strings));



          for (k = 0; k < sub_table->long_string_count; ++k)
            {
              svn_string_t *string = &sub_table->long_strings[k];
              string->data = svn_packed__get_bytes(large_strings,
                                                   &string->len);
              string->len--;
            }
        }
    }



  *table_p = table;

  return SVN_NO_ERROR;
}
