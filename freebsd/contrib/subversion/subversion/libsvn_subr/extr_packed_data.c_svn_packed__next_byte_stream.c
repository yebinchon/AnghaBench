
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* next; } ;
typedef TYPE_1__ svn_packed__byte_stream_t ;



svn_packed__byte_stream_t *
svn_packed__next_byte_stream(svn_packed__byte_stream_t *stream)
{
  return stream->next;
}
