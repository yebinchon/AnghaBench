
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_stringbuf_t ;
struct TYPE_5__ {struct TYPE_5__* first_substream; TYPE_1__* packed; int lengths_stream_index; struct TYPE_5__* next; } ;
typedef TYPE_2__ svn_packed__byte_stream_t ;
struct TYPE_4__ {int len; } ;


 int write_packed_uint (int *,int ) ;

__attribute__((used)) static void
write_byte_stream_structure(svn_stringbuf_t* tree_struct,
                            svn_packed__byte_stream_t* stream)
{

  for (; stream; stream = stream->next)
    {

      write_packed_uint(tree_struct, 0);
      write_packed_uint(tree_struct, stream->lengths_stream_index);
      write_packed_uint(tree_struct, stream->packed->len);


      write_byte_stream_structure(tree_struct, stream->first_substream);
    }
}
