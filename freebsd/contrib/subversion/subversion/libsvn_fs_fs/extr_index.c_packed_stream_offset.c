
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int current; scalar_t__ stream_start; scalar_t__ start_offset; TYPE_1__* buffer; } ;
typedef TYPE_2__ svn_fs_fs__packed_number_stream_t ;
typedef scalar_t__ apr_off_t ;
struct TYPE_4__ {scalar_t__ total_len; } ;



__attribute__((used)) static apr_off_t
packed_stream_offset(svn_fs_fs__packed_number_stream_t *stream)
{
  apr_off_t file_offset
       = stream->current == 0
       ? stream->start_offset
       : stream->buffer[stream->current-1].total_len + stream->start_offset;

  return file_offset - stream->stream_start;
}
