
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int z_stream ;
typedef void* uInt ;
typedef int svn_error_t ;
struct zbaton {int substream; TYPE_1__* out; int * pool; } ;
typedef int apr_size_t ;
typedef int apr_pool_t ;
struct TYPE_3__ {scalar_t__ avail_in; int avail_out; int msg; void* next_out; int * next_in; int * opaque; int zfree; int zalloc; } ;
typedef int Bytef ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int Z_DEFAULT_COMPRESSION ;
 int Z_NO_FLUSH ;
 void* apr_palloc (int *,int) ;
 int deflate (TYPE_1__*,int ) ;
 int deflateInit (TYPE_1__*,int ) ;
 int svn_error__wrap_zlib (int,char*,int ) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 int svn_stream_write (int ,void*,int*) ;
 int zalloc ;
 int zfree ;

__attribute__((used)) static svn_error_t *
write_handler_gz(void *baton, const char *buffer, apr_size_t *len)
{
  struct zbaton *btn = baton;
  apr_pool_t *subpool;
  void *write_buf;
  apr_size_t buf_size, write_len;
  int zerr;

  if (btn->out == ((void*)0))
    {
      btn->out = apr_palloc(btn->pool, sizeof(z_stream));
      btn->out->zalloc = zalloc;
      btn->out->zfree = zfree;
      btn->out->opaque = btn->pool;

      zerr = deflateInit(btn->out, Z_DEFAULT_COMPRESSION);
      SVN_ERR(svn_error__wrap_zlib(zerr, "deflateInit", btn->out->msg));
    }



  buf_size = *len + (*len / 1000) + 13;
  subpool = svn_pool_create(btn->pool);
  write_buf = apr_palloc(subpool, buf_size);

  btn->out->next_in = (Bytef *) buffer;
  btn->out->avail_in = (uInt) *len;

  while (btn->out->avail_in > 0)
    {
      btn->out->next_out = write_buf;
      btn->out->avail_out = (uInt) buf_size;

      zerr = deflate(btn->out, Z_NO_FLUSH);
      SVN_ERR(svn_error__wrap_zlib(zerr, "deflate", btn->out->msg));
      write_len = buf_size - btn->out->avail_out;
      if (write_len > 0)
        SVN_ERR(svn_stream_write(btn->substream, write_buf, &write_len));
    }

  svn_pool_destroy(subpool);

  return SVN_NO_ERROR;
}
