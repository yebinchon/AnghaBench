
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_stream_t ;
typedef int svn_error_t ;
struct translated_stream_baton {scalar_t__ readbuf_off; TYPE_1__* readbuf; int iterpool; int in_baton; int * buf; int stream; } ;
typedef int apr_size_t ;
struct TYPE_3__ {scalar_t__ len; char* data; } ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int SVN__STREAM_CHUNK_SIZE ;
 int memcpy (char*,char*,int) ;
 int svn_pool_clear (int ) ;
 int svn_stream_close (int *) ;
 int * svn_stream_from_stringbuf (TYPE_1__*,int ) ;
 int svn_stream_read_full (int ,int *,int*) ;
 int svn_stringbuf_setempty (TYPE_1__*) ;
 int translate_chunk (int *,int ,int *,int,int ) ;

__attribute__((used)) static svn_error_t *
translated_stream_read(void *baton,
                       char *buffer,
                       apr_size_t *len)
{
  struct translated_stream_baton *b = baton;
  apr_size_t readlen = SVN__STREAM_CHUNK_SIZE;
  apr_size_t unsatisfied = *len;
  apr_size_t off = 0;
  if (unsatisfied == 1 && b->readbuf_off < b->readbuf->len)
    {

      *buffer = b->readbuf->data[b->readbuf_off++];

      return SVN_NO_ERROR;
    }


  while (readlen == SVN__STREAM_CHUNK_SIZE && unsatisfied > 0)
    {
      apr_size_t to_copy;
      apr_size_t buffer_remainder;

      svn_pool_clear(b->iterpool);

      if (! (b->readbuf_off < b->readbuf->len))
        {
          svn_stream_t *buf_stream;

          svn_stringbuf_setempty(b->readbuf);
          b->readbuf_off = 0;
          SVN_ERR(svn_stream_read_full(b->stream, b->buf, &readlen));
          buf_stream = svn_stream_from_stringbuf(b->readbuf, b->iterpool);

          SVN_ERR(translate_chunk(buf_stream, b->in_baton, b->buf,
                                  readlen, b->iterpool));

          if (readlen != SVN__STREAM_CHUNK_SIZE)
            SVN_ERR(translate_chunk(buf_stream, b->in_baton, ((void*)0), 0,
                                    b->iterpool));

          SVN_ERR(svn_stream_close(buf_stream));
        }


      buffer_remainder = b->readbuf->len - b->readbuf_off;
      to_copy = (buffer_remainder > unsatisfied)
        ? unsatisfied : buffer_remainder;
      memcpy(buffer + off, b->readbuf->data + b->readbuf_off, to_copy);
      off += to_copy;
      b->readbuf_off += to_copy;
      unsatisfied -= to_copy;
    }

  *len -= unsatisfied;

  return SVN_NO_ERROR;
}
