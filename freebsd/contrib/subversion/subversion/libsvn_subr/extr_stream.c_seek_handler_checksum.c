
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_stream_mark_t ;
typedef int svn_error_t ;
struct checksum_stream_baton {int proxy; scalar_t__ write_ctx; scalar_t__ read_ctx; } ;


 int SVN_ERR (int ) ;
 int SVN_ERR_STREAM_SEEK_NOT_SUPPORTED ;
 int * SVN_NO_ERROR ;
 int svn_checksum_ctx_reset (scalar_t__) ;
 int * svn_error_create (int ,int *,int *) ;
 int svn_stream_reset (int ) ;

__attribute__((used)) static svn_error_t *
seek_handler_checksum(void *baton, const svn_stream_mark_t *mark)
{
  struct checksum_stream_baton *btn = baton;


  if (mark)
    {
      return svn_error_create(SVN_ERR_STREAM_SEEK_NOT_SUPPORTED,
                              ((void*)0), ((void*)0));
    }
  else
    {
      if (btn->read_ctx)
        svn_checksum_ctx_reset(btn->read_ctx);

      if (btn->write_ctx)
        svn_checksum_ctx_reset(btn->write_ctx);

      SVN_ERR(svn_stream_reset(btn->proxy));
    }

  return SVN_NO_ERROR;
}
