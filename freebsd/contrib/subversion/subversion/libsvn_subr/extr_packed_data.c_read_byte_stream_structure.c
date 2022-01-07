
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int svn_stringbuf_t ;
struct TYPE_7__ {TYPE_3__* private_data; } ;
typedef TYPE_1__ svn_packed__int_stream_t ;
struct TYPE_8__ {TYPE_1__* lengths_stream; scalar_t__ lengths_stream_index; TYPE_4__* packed; } ;
typedef TYPE_2__ svn_packed__byte_stream_t ;
struct TYPE_9__ {TYPE_1__* next; } ;
typedef TYPE_3__ packed_int_private_t ;
typedef scalar_t__ apr_size_t ;
struct TYPE_10__ {scalar_t__ len; } ;


 scalar_t__ read_packed_uint (int *) ;
 int svn_stringbuf_ensure (TYPE_4__*,scalar_t__) ;

__attribute__((used)) static void
read_byte_stream_structure(svn_stringbuf_t *tree_struct,
                           svn_packed__byte_stream_t *stream,
                           svn_packed__int_stream_t *first_int_stream)
{
  apr_size_t lengths_stream_index;
  apr_size_t packed_size;
  apr_size_t i;


  (void) (apr_size_t)read_packed_uint(tree_struct);
  lengths_stream_index = (apr_size_t)read_packed_uint(tree_struct);
  packed_size = (apr_size_t)read_packed_uint(tree_struct);


  svn_stringbuf_ensure(stream->packed, packed_size);
  stream->packed->len = packed_size;


  stream->lengths_stream_index = lengths_stream_index;
  stream->lengths_stream = first_int_stream;
  for (i = 0; i < lengths_stream_index; ++i)
    {
      packed_int_private_t *length_private
        = stream->lengths_stream->private_data;
      stream->lengths_stream = length_private->next;
    }
}
