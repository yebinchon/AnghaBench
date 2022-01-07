
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* private_data; } ;
typedef TYPE_1__ svn_packed__int_stream_t ;
struct TYPE_6__ {TYPE_1__* first_substream; } ;
typedef TYPE_2__ packed_int_private_t ;



svn_packed__int_stream_t *
svn_packed__first_int_substream(svn_packed__int_stream_t *stream)
{
  packed_int_private_t *private_data = stream->private_data;
  return private_data->first_substream;
}
