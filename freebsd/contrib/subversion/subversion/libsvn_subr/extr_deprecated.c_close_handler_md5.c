
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_error_t ;
struct md5_stream_baton {TYPE_1__* write_checksum; int pool; void** write_digest; TYPE_2__* read_checksum; void** read_digest; int proxy; } ;
struct TYPE_4__ {int digest; } ;
struct TYPE_3__ {int digest; } ;


 int APR_MD5_DIGESTSIZE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 void* apr_pmemdup (int ,int ,int ) ;
 int svn_stream_close (int ) ;

__attribute__((used)) static svn_error_t *
close_handler_md5(void *baton)
{
  struct md5_stream_baton *btn = baton;

  SVN_ERR(svn_stream_close(btn->proxy));

  if (btn->read_digest)
    *btn->read_digest
      = apr_pmemdup(btn->pool, btn->read_checksum->digest,
                    APR_MD5_DIGESTSIZE);

  if (btn->write_digest)
    *btn->write_digest
      = apr_pmemdup(btn->pool, btn->write_checksum->digest,
                    APR_MD5_DIGESTSIZE);

  return SVN_NO_ERROR;
}
