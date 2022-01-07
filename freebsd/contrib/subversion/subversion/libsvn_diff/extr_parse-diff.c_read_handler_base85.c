
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* data; scalar_t__ len; } ;
typedef TYPE_1__ svn_stringbuf_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
struct base85_baton_t {scalar_t__ buf_size; scalar_t__ buf_pos; scalar_t__ next_pos; scalar_t__ end_pos; scalar_t__ buffer; scalar_t__ done; int file; int * iterpool; } ;
typedef scalar_t__ apr_size_t ;
typedef int apr_pool_t ;


 int APR_SET ;
 int APR_SIZE_MAX ;
 int SVN_ERR (int ) ;
 int SVN_ERR_DIFF_UNEXPECTED_DATA ;
 int * SVN_NO_ERROR ;
 scalar_t__ TRUE ;
 int _ (char*) ;
 int memcpy (char*,scalar_t__,scalar_t__) ;
 int svn_diff__base85_decode_line (scalar_t__,int,char*,scalar_t__,int *) ;
 int * svn_error_create (int ,int *,int ) ;
 int svn_io_file_get_offset (scalar_t__*,int ,int *) ;
 int svn_io_file_readline (int ,TYPE_1__**,int *,scalar_t__*,int ,int *,int *) ;
 int svn_io_file_seek (int ,int ,scalar_t__*,int *) ;
 int svn_pool_clear (int *) ;

__attribute__((used)) static svn_error_t *
read_handler_base85(void *baton, char *buffer, apr_size_t *len)
{
  struct base85_baton_t *b85b = baton;
  apr_pool_t *iterpool = b85b->iterpool;
  apr_size_t remaining = *len;
  char *dest = buffer;

  svn_pool_clear(iterpool);

  if (b85b->done)
    {
      *len = 0;
      return SVN_NO_ERROR;
    }

  while (remaining && (b85b->buf_size > b85b->buf_pos
                       || b85b->next_pos < b85b->end_pos))
    {
      svn_stringbuf_t *line;
      svn_boolean_t at_eof;

      apr_size_t available = b85b->buf_size - b85b->buf_pos;
      if (available)
        {
          apr_size_t n = (remaining < available) ? remaining : available;

          memcpy(dest, b85b->buffer + b85b->buf_pos, n);
          dest += n;
          remaining -= n;
          b85b->buf_pos += n;

          if (!remaining)
            return SVN_NO_ERROR;
        }

      if (b85b->next_pos >= b85b->end_pos)
        break;
      SVN_ERR(svn_io_file_seek(b85b->file, APR_SET, &b85b->next_pos,
                               iterpool));
      SVN_ERR(svn_io_file_readline(b85b->file, &line, ((void*)0), &at_eof,
                                   APR_SIZE_MAX, iterpool, iterpool));
      if (at_eof)
        b85b->next_pos = b85b->end_pos;
      else
        {
          SVN_ERR(svn_io_file_get_offset(&b85b->next_pos, b85b->file,
                                         iterpool));
        }

      if (line->len && line->data[0] >= 'A' && line->data[0] <= 'Z')
        b85b->buf_size = line->data[0] - 'A' + 1;
      else if (line->len && line->data[0] >= 'a' && line->data[0] <= 'z')
        b85b->buf_size = line->data[0] - 'a' + 26 + 1;
      else
        return svn_error_create(SVN_ERR_DIFF_UNEXPECTED_DATA, ((void*)0),
                                _("Unexpected data in base85 section"));

      if (b85b->buf_size < 52)
        b85b->next_pos = b85b->end_pos;

      SVN_ERR(svn_diff__base85_decode_line(b85b->buffer, b85b->buf_size,
                                           line->data + 1, line->len - 1,
                                           iterpool));
      b85b->buf_pos = 0;
    }

  *len -= remaining;
  b85b->done = TRUE;

  return SVN_NO_ERROR;
}
