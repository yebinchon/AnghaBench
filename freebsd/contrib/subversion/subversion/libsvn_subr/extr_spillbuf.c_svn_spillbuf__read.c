
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {struct memblock_t* out_for_reading; } ;
typedef TYPE_1__ svn_spillbuf_t ;
typedef int svn_error_t ;
struct memblock_t {char* data; int size; } ;
typedef int apr_size_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int maybe_seek (int *,TYPE_1__*,int *) ;
 int read_data (struct memblock_t**,TYPE_1__*,int *) ;
 int return_buffer (TYPE_1__*,struct memblock_t*) ;

svn_error_t *
svn_spillbuf__read(const char **data,
                   apr_size_t *len,
                   svn_spillbuf_t *buf,
                   apr_pool_t *scratch_pool)
{
  struct memblock_t *mem;


  SVN_ERR(maybe_seek(((void*)0), buf, scratch_pool));

  SVN_ERR(read_data(&mem, buf, scratch_pool));
  if (mem == ((void*)0))
    {
      *data = ((void*)0);
      *len = 0;
    }
  else
    {
      *data = mem->data;
      *len = mem->size;


      if (buf->out_for_reading != ((void*)0))
        return_buffer(buf, buf->out_for_reading);


      buf->out_for_reading = mem;
    }

  return SVN_NO_ERROR;
}
