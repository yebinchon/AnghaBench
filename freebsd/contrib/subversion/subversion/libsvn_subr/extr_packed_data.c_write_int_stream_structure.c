
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int svn_stringbuf_t ;
struct TYPE_7__ {TYPE_3__* private_data; } ;
typedef TYPE_2__ svn_packed__int_stream_t ;
struct TYPE_8__ {int substream_count; int item_count; TYPE_2__* next; scalar_t__ is_last; TYPE_2__* first_substream; TYPE_1__* packed; scalar_t__ is_signed; scalar_t__ diff; } ;
typedef TYPE_3__ packed_int_private_t ;
struct TYPE_6__ {int len; } ;


 int data_flush_buffer (TYPE_2__*) ;
 int write_packed_uint (int *,int) ;

__attribute__((used)) static void
write_int_stream_structure(svn_stringbuf_t* tree_struct,
                           svn_packed__int_stream_t* stream)
{
  while (stream)
    {

      packed_int_private_t *private_data = stream->private_data;
      write_packed_uint(tree_struct, (private_data->substream_count << 2)
                                   + (private_data->diff ? 1 : 0)
                                   + (private_data->is_signed ? 2 : 0));


      data_flush_buffer(stream);

      write_packed_uint(tree_struct, private_data->item_count);
      write_packed_uint(tree_struct, private_data->packed
                                   ? private_data->packed->len
                                   : 0);


      write_int_stream_structure(tree_struct, private_data->first_substream);


      stream = private_data->is_last ? ((void*)0) : private_data->next;
    }
}
