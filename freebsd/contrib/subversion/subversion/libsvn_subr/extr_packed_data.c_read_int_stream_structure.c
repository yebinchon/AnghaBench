
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int svn_stringbuf_t ;
struct TYPE_7__ {TYPE_2__* private_data; } ;
typedef TYPE_1__ svn_packed__int_stream_t ;
struct TYPE_8__ {int diff; int is_signed; TYPE_3__* packed; int pool; scalar_t__ item_count; } ;
typedef TYPE_2__ packed_int_private_t ;
typedef int apr_uint64_t ;
typedef scalar_t__ apr_size_t ;
struct TYPE_9__ {scalar_t__ len; } ;


 int FALSE ;
 int read_packed_uint (int *) ;
 TYPE_1__* svn_packed__create_int_substream (TYPE_1__*,int ,int ) ;
 TYPE_3__* svn_stringbuf_create_ensure (scalar_t__,int ) ;

__attribute__((used)) static void
read_int_stream_structure(svn_stringbuf_t *tree_struct,
                          svn_packed__int_stream_t *stream)
{
  packed_int_private_t *private_data = stream->private_data;
  apr_uint64_t value = read_packed_uint(tree_struct);
  apr_size_t substream_count;
  apr_size_t i;


  private_data->diff = (value & 1) != 0;
  private_data->is_signed = (value & 2) != 0;
  substream_count = (apr_size_t)(value >> 2);


  private_data->item_count = (apr_size_t)read_packed_uint(tree_struct);
  value = read_packed_uint(tree_struct);
  if (value)
    {
      private_data->packed = svn_stringbuf_create_ensure((apr_size_t)value,
                                                         private_data->pool);
      private_data->packed->len = (apr_size_t)value;
    }


  for (i = 0; i < substream_count; ++i)
    read_int_stream_structure(tree_struct,
                              svn_packed__create_int_substream(stream,
                                                               FALSE,
                                                               FALSE));
}
