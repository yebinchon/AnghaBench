
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_stringbuf_t ;
struct TYPE_4__ {TYPE_2__* private_data; } ;
typedef TYPE_1__ svn_packed__int_stream_t ;
struct TYPE_5__ {TYPE_1__* next; scalar_t__ is_last; TYPE_1__* first_substream; scalar_t__ packed; } ;
typedef TYPE_2__ packed_int_private_t ;


 int svn_stringbuf_appendstr (int *,scalar_t__) ;

__attribute__((used)) static void
append_int_stream(svn_packed__int_stream_t *stream,
                  svn_stringbuf_t *combined)
{
  packed_int_private_t *private_data = stream->private_data;
  if (private_data->packed)
    svn_stringbuf_appendstr(combined, private_data->packed);

  stream = private_data->first_substream;
  while (stream)
    {
      private_data = stream->private_data;
      append_int_stream(stream, combined);
      stream = private_data->is_last ? ((void*)0) : private_data->next;
    }
}
