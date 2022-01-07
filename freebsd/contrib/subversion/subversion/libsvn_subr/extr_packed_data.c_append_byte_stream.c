
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_stringbuf_t ;
struct TYPE_3__ {struct TYPE_3__* next; struct TYPE_3__* first_substream; int packed; } ;
typedef TYPE_1__ svn_packed__byte_stream_t ;


 int svn_stringbuf_appendstr (int *,int ) ;

__attribute__((used)) static void
append_byte_stream(svn_packed__byte_stream_t *stream,
                   svn_stringbuf_t *combined)
{
  svn_stringbuf_appendstr(combined, stream->packed);

  for (stream = stream->first_substream; stream; stream = stream->next)
    append_byte_stream(stream, combined);
}
