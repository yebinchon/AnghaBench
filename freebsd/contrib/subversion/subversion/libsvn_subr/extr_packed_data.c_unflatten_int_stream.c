
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ data; } ;
typedef TYPE_2__ svn_stringbuf_t ;
struct TYPE_9__ {TYPE_4__* private_data; } ;
typedef TYPE_3__ svn_packed__int_stream_t ;
struct TYPE_10__ {TYPE_3__* next; scalar_t__ is_last; TYPE_3__* first_substream; TYPE_1__* packed; } ;
typedef TYPE_4__ packed_int_private_t ;
typedef scalar_t__ apr_size_t ;
struct TYPE_7__ {char* data; size_t len; } ;


 int memcpy (char*,scalar_t__,size_t) ;

__attribute__((used)) static void
unflatten_int_stream(svn_packed__int_stream_t *stream,
                     svn_stringbuf_t *combined,
                     apr_size_t *offset)
{
  packed_int_private_t *private_data = stream->private_data;
  if (private_data->packed)
    {
      memcpy(private_data->packed->data,
             combined->data + *offset,
             private_data->packed->len);

      private_data->packed->data[private_data->packed->len] = '\0';
      *offset += private_data->packed->len;
    }

  stream = private_data->first_substream;
  while (stream)
    {
      private_data = stream->private_data;
      unflatten_int_stream(stream, combined, offset);
      stream = private_data->is_last ? ((void*)0) : private_data->next;
    }
}
