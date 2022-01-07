
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char* data; TYPE_2__* short_strings; } ;
typedef TYPE_1__ string_sub_table_t ;
struct TYPE_6__ {size_t head_length; int tail_start; size_t head_string; } ;
typedef TYPE_2__ string_header_t ;
typedef int const apr_uint64_t ;
typedef size_t apr_size_t ;


 int assert (int) ;
 scalar_t__* copy_masks ;
 int memcpy (char*,char*,size_t) ;

__attribute__((used)) static void
table_copy_string(char *buffer,
                  apr_size_t len,
                  const string_sub_table_t *table,
                  string_header_t *header)
{
  buffer[len] = '\0';
  do
    {
      assert(header->head_length <= len);
        {
          memcpy(buffer + header->head_length,
                 table->data + header->tail_start,
                 len - header->head_length);
          len = header->head_length;

        }

      header = &table->short_strings[header->head_string];
    }
  while (len);
}
