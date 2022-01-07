
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned char const* (* md5_digest ) (int ) ;int baton; } ;
typedef TYPE_1__ svn_txdelta_stream_t ;


 unsigned char const* stub1 (int ) ;

const unsigned char *
svn_txdelta_md5_digest(svn_txdelta_stream_t *stream)
{
  return stream->md5_digest(stream->baton);
}
