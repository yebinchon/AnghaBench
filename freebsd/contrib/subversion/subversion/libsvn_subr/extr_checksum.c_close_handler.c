
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_4__ {int digest; int kind; } ;
typedef TYPE_1__ svn_checksum_t ;
struct TYPE_5__ {int inner_stream; TYPE_1__** checksum; scalar_t__ digest; int pool; int context; } ;
typedef TYPE_2__ stream_baton_t ;
typedef int apr_size_t ;


 int DIGESTSIZE (int ) ;
 int SVN_ERR (int ) ;
 int memcpy (scalar_t__,int ,int ) ;
 int svn_checksum_final (TYPE_1__**,int ,int ) ;
 int * svn_error_trace (int ) ;
 int svn_stream_close (int ) ;

__attribute__((used)) static svn_error_t *
close_handler(void *baton)
{
  stream_baton_t *b = baton;
  svn_checksum_t *local_checksum;


  if (!b->checksum)
    b->checksum = &local_checksum;


  SVN_ERR(svn_checksum_final(b->checksum, b->context, b->pool));


  if (b->digest)
    {
      apr_size_t digest_size = DIGESTSIZE((*b->checksum)->kind);
      memcpy(b->digest, (*b->checksum)->digest, digest_size);
    }


  return svn_error_trace(svn_stream_close(b->inner_stream));
}
