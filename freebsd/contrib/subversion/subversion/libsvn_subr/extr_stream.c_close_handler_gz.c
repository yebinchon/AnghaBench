
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_error_t ;
struct zbaton {int substream; TYPE_2__* out; int pool; TYPE_1__* in; } ;
typedef scalar_t__ apr_size_t ;
struct TYPE_5__ {scalar_t__ avail_out; int msg; void* next_out; } ;
struct TYPE_4__ {int msg; } ;


 int SVN_ERR (int ) ;
 scalar_t__ TRUE ;
 scalar_t__ ZBUFFER_SIZE ;
 int Z_FINISH ;
 int Z_OK ;
 int Z_STREAM_END ;
 void* apr_palloc (int ,scalar_t__) ;
 int deflate (TYPE_2__*,int ) ;
 int deflateEnd (TYPE_2__*) ;
 int inflateEnd (TYPE_1__*) ;
 int svn_error__wrap_zlib (int,char*,int ) ;
 int * svn_error_trace (int ) ;
 int svn_stream_close (int ) ;
 int svn_stream_write (int ,void*,scalar_t__*) ;

__attribute__((used)) static svn_error_t *
close_handler_gz(void *baton)
{
  struct zbaton *btn = baton;
  int zerr;

  if (btn->in != ((void*)0))
    {
      zerr = inflateEnd(btn->in);
      SVN_ERR(svn_error__wrap_zlib(zerr, "inflateEnd", btn->in->msg));
    }

  if (btn->out != ((void*)0))
    {
      void *buf;
      apr_size_t write_len;

      buf = apr_palloc(btn->pool, ZBUFFER_SIZE);

      while (TRUE)
        {
          btn->out->next_out = buf;
          btn->out->avail_out = ZBUFFER_SIZE;

          zerr = deflate(btn->out, Z_FINISH);
          if (zerr != Z_STREAM_END && zerr != Z_OK)
            return svn_error_trace(svn_error__wrap_zlib(zerr, "deflate",
                                                        btn->out->msg));
          write_len = ZBUFFER_SIZE - btn->out->avail_out;
          if (write_len > 0)
            SVN_ERR(svn_stream_write(btn->substream, buf, &write_len));
          if (zerr == Z_STREAM_END)
            break;
        }

      zerr = deflateEnd(btn->out);
      SVN_ERR(svn_error__wrap_zlib(zerr, "deflateEnd", btn->out->msg));
    }

  return svn_error_trace(svn_stream_close(btn->substream));
}
