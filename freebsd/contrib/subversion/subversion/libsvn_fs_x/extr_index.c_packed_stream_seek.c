
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ stream_start; scalar_t__ used; scalar_t__ start_offset; scalar_t__ next_offset; size_t current; TYPE_1__* buffer; } ;
typedef TYPE_2__ svn_fs_x__packed_number_stream_t ;
typedef size_t apr_size_t ;
typedef scalar_t__ apr_off_t ;
struct TYPE_4__ {scalar_t__ total_len; } ;



__attribute__((used)) static void
packed_stream_seek(svn_fs_x__packed_number_stream_t *stream,
                   apr_off_t offset)
{
  apr_off_t file_offset = offset + stream->stream_start;

  if ( stream->used == 0
      || offset < stream->start_offset
      || offset >= stream->next_offset)
    {

      stream->start_offset = file_offset;
      stream->next_offset = file_offset;
      stream->current = 0;
      stream->used = 0;
    }
  else
    {



      apr_size_t i;
      for (i = 0; i < stream->used; ++i)
        if (stream->buffer[i].total_len > file_offset - stream->start_offset)
          break;

      stream->current = i;
    }
}
