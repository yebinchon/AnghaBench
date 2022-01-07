
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* packed; } ;
typedef TYPE_2__ svn_packed__byte_stream_t ;
typedef int apr_size_t ;
struct TYPE_4__ {int len; } ;



apr_size_t
svn_packed__byte_count(svn_packed__byte_stream_t *stream)
{
  return stream->packed->len;
}
