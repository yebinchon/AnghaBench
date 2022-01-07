
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int svn_temp_serializer__context_t ;
struct TYPE_5__ {int len; int data; } ;
typedef TYPE_1__ svn_string_t ;
struct TYPE_6__ {int size; TYPE_3__* sub_tables; } ;
typedef TYPE_2__ string_table_t ;
struct TYPE_7__ {int data_size; int short_string_count; int long_string_count; TYPE_1__* long_strings; int short_strings; int data; } ;
typedef TYPE_3__ string_sub_table_t ;
typedef int string_header_t ;
typedef size_t apr_size_t ;


 int svn_temp_serializer__add_leaf (int *,void const* const*,int) ;
 int svn_temp_serializer__pop (int *) ;
 int svn_temp_serializer__push (int *,void const* const*,int) ;

void
svn_fs_x__serialize_string_table(svn_temp_serializer__context_t *context,
                                 string_table_t **st)
{
  apr_size_t i, k;
  string_table_t *string_table = *st;
  if (string_table == ((void*)0))
    return;


  svn_temp_serializer__push(context,
                            (const void * const *)st,
                            sizeof(*string_table));


  svn_temp_serializer__push(context,
                            (const void * const *)&string_table->sub_tables,
                            sizeof(*string_table->sub_tables) *
                            string_table->size);


  for (i = 0; i < string_table->size; ++i)
    {
      string_sub_table_t *sub_table = &string_table->sub_tables[i];
      svn_temp_serializer__add_leaf(context,
                                    (const void * const *)&sub_table->data,
                                    sub_table->data_size);
      svn_temp_serializer__add_leaf(context,
                    (const void * const *)&sub_table->short_strings,
                    sub_table->short_string_count * sizeof(string_header_t));


      svn_temp_serializer__push(context,
                    (const void * const *)&sub_table->long_strings,
                    sub_table->long_string_count * sizeof(svn_string_t));


      for (k = 0; k < sub_table->long_string_count; ++k)
        {
          svn_string_t *string = &sub_table->long_strings[k];
          svn_temp_serializer__add_leaf(context,
                                        (const void * const *)&string->data,
                                        string->len + 1);
        }

      svn_temp_serializer__pop(context);
    }


  svn_temp_serializer__pop(context);
  svn_temp_serializer__pop(context);
}
