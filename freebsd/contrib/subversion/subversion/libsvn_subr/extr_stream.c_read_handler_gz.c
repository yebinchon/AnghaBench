
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int z_stream ;
typedef scalar_t__ uInt ;
typedef int svn_error_t ;
struct zbaton {TYPE_1__* in; int read_flush; void* read_buffer; int substream; int pool; } ;
typedef scalar_t__ apr_size_t ;
struct TYPE_3__ {int avail_in; scalar_t__ avail_out; int msg; void* next_in; int * next_out; int opaque; int zfree; int zalloc; } ;
typedef int Bytef ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int ZBUFFER_SIZE ;
 int Z_OK ;
 int Z_STREAM_END ;
 void* apr_palloc (int ,int) ;
 int inflate (TYPE_1__*,int ) ;
 int inflateInit (TYPE_1__*) ;
 int read_helper_gz (int ,void*,int*,int *) ;
 int svn_error__wrap_zlib (int,char*,int ) ;
 int * svn_error_trace (int ) ;
 int zalloc ;
 int zfree ;

__attribute__((used)) static svn_error_t *
read_handler_gz(void *baton, char *buffer, apr_size_t *len)
{
  struct zbaton *btn = baton;
  int zerr;

  if (btn->in == ((void*)0))
    {
      btn->in = apr_palloc(btn->pool, sizeof(z_stream));
      btn->in->zalloc = zalloc;
      btn->in->zfree = zfree;
      btn->in->opaque = btn->pool;
      btn->read_buffer = apr_palloc(btn->pool, ZBUFFER_SIZE);
      btn->in->next_in = btn->read_buffer;
      btn->in->avail_in = ZBUFFER_SIZE;

      SVN_ERR(read_helper_gz(btn->substream, btn->read_buffer,
                             &btn->in->avail_in, &btn->read_flush));

      zerr = inflateInit(btn->in);
      SVN_ERR(svn_error__wrap_zlib(zerr, "inflateInit", btn->in->msg));
    }

  btn->in->next_out = (Bytef *) buffer;
  btn->in->avail_out = (uInt) *len;

  while (btn->in->avail_out > 0)
    {
      if (btn->in->avail_in <= 0)
        {
          btn->in->avail_in = ZBUFFER_SIZE;
          btn->in->next_in = btn->read_buffer;
          SVN_ERR(read_helper_gz(btn->substream, btn->read_buffer,
                                 &btn->in->avail_in, &btn->read_flush));
        }


      if (btn->in->avail_in == 0)
        {
          *len = 0;
          return SVN_NO_ERROR;
        }

      zerr = inflate(btn->in, btn->read_flush);
      if (zerr == Z_STREAM_END)
        break;
      else if (zerr != Z_OK)
        return svn_error_trace(svn_error__wrap_zlib(zerr, "inflate",
                                                    btn->in->msg));
    }

  *len -= btn->in->avail_out;
  return SVN_NO_ERROR;
}
