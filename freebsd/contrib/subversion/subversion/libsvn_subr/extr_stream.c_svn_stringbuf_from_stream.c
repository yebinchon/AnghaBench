
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int blocksize; int len; char* data; } ;
typedef TYPE_1__ svn_stringbuf_t ;
typedef int svn_stream_t ;
typedef int svn_error_t ;
typedef scalar_t__ apr_size_t ;
typedef int apr_pool_t ;


 int MAX (scalar_t__,scalar_t__) ;
 scalar_t__ MIN_READ_SIZE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 scalar_t__ TRUE ;
 int svn_stream_read_full (int *,char*,scalar_t__*) ;
 TYPE_1__* svn_stringbuf_create_ensure (int ,int *) ;
 int svn_stringbuf_ensure (TYPE_1__*,int) ;

svn_error_t *
svn_stringbuf_from_stream(svn_stringbuf_t **result,
                          svn_stream_t *stream,
                          apr_size_t len_hint,
                          apr_pool_t *result_pool)
{

  svn_stringbuf_t *text
    = svn_stringbuf_create_ensure(MAX(len_hint + 1, 64),
                                  result_pool);

  while(TRUE)
    {
      apr_size_t to_read = text->blocksize - 1 - text->len;
      apr_size_t actually_read = to_read;

      SVN_ERR(svn_stream_read_full(stream, text->data + text->len, &actually_read));
      text->len += actually_read;

      if (actually_read < to_read)
        break;

      if (text->blocksize - text->len < 64)
        svn_stringbuf_ensure(text, text->blocksize * 2);
    }

  text->data[text->len] = '\0';
  *result = text;

  return SVN_NO_ERROR;
}
