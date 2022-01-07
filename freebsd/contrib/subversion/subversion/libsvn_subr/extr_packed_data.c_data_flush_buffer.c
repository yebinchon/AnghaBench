
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {size_t buffer_used; void** buffer; TYPE_2__* private_data; } ;
typedef TYPE_1__ svn_packed__int_stream_t ;
struct TYPE_6__ {size_t item_count; int * packed; int pool; scalar_t__ is_signed; scalar_t__ diff; void* last_value; TYPE_3__* next; TYPE_3__* current_substream; } ;
typedef TYPE_2__ packed_int_private_t ;
typedef void* apr_uint64_t ;
typedef size_t apr_size_t ;
struct TYPE_7__ {TYPE_2__* private_data; } ;


 int SVN__PACKED_DATA_BUFFER_SIZE ;
 void* remap_uint (void*) ;
 int svn_packed__add_uint (TYPE_3__*,void*) ;
 int svn_stringbuf_appendbytes (int *,char*,int) ;
 int * svn_stringbuf_create_ensure (int,int ) ;
 unsigned char* write_packed_uint_body (unsigned char*,void*) ;

__attribute__((used)) static void
data_flush_buffer(svn_packed__int_stream_t *stream)
{
  packed_int_private_t *private_data = stream->private_data;
  apr_size_t i;


  if (private_data->current_substream)
    for (i = 0; i < stream->buffer_used; ++i)
      {
        packed_int_private_t *current_private_data
          = private_data->current_substream->private_data;

        svn_packed__add_uint(private_data->current_substream,
                             stream->buffer[i]);
        private_data->current_substream = current_private_data->next;
      }
  else
    {



      unsigned char local_buffer[10 * SVN__PACKED_DATA_BUFFER_SIZE];
      unsigned char *p = local_buffer;



      if (private_data->diff)
        {
          apr_uint64_t last_value = private_data->last_value;
          for (i = 0; i < stream->buffer_used; ++i)
            {
              apr_uint64_t temp = stream->buffer[i];
              stream->buffer[i] = remap_uint(temp - last_value);
              last_value = temp;
            }

          private_data->last_value = last_value;
        }





      if (!private_data->diff && private_data->is_signed)
        for (i = 0; i < stream->buffer_used; ++i)
          stream->buffer[i] = remap_uint(stream->buffer[i]);



      if (private_data->packed == ((void*)0))
        private_data->packed
          = svn_stringbuf_create_ensure(256, private_data->pool);


      for (i = 0; i < stream->buffer_used; ++i)
        p = write_packed_uint_body(p, stream->buffer[i]);


      svn_stringbuf_appendbytes(private_data->packed,
                                (char *)local_buffer,
                                p - local_buffer);
    }


  private_data->item_count += stream->buffer_used;
  stream->buffer_used = 0;
}
