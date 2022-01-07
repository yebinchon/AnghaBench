
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ sb_len; scalar_t__ save_len; TYPE_2__* buf; scalar_t__ save_pos; int sb_ptr; int * save_ptr; } ;
typedef TYPE_1__ svn_spillbuf_reader_t ;
typedef int svn_error_t ;
typedef int apr_size_t ;
typedef int apr_pool_t ;
struct TYPE_5__ {int blocksize; int pool; } ;


 int * apr_palloc (int ,int ) ;
 int memcpy (int *,int ,scalar_t__) ;
 int * svn_error_trace (int ) ;
 int svn_spillbuf__write (TYPE_2__*,char const*,int ,int *) ;

svn_error_t *
svn_spillbuf__reader_write(svn_spillbuf_reader_t *reader,
                           const char *data,
                           apr_size_t len,
                           apr_pool_t *scratch_pool)
{


  if (reader->sb_len > 0)
    {
      if (reader->save_ptr == ((void*)0))
        reader->save_ptr = apr_palloc(reader->buf->pool,
                                      reader->buf->blocksize);

      memcpy(reader->save_ptr, reader->sb_ptr, reader->sb_len);
      reader->save_len = reader->sb_len;
      reader->save_pos = 0;


      reader->sb_len = 0;
    }

  return svn_error_trace(svn_spillbuf__write(reader->buf, data, len,
                                             scratch_pool));
}
