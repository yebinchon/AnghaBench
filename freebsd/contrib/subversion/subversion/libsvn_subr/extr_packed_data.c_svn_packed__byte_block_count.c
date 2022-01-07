
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lengths_stream; } ;
typedef TYPE_1__ svn_packed__byte_stream_t ;
typedef int apr_size_t ;


 int svn_packed__int_count (int ) ;

apr_size_t
svn_packed__byte_block_count(svn_packed__byte_stream_t *stream)
{
  return svn_packed__int_count(stream->lengths_stream);
}
