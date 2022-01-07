
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_stringbuf_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
struct stringbuf_stream_baton {int amt_read; TYPE_1__* str; } ;
typedef int apr_size_t ;
typedef int apr_pool_t ;
struct TYPE_2__ {char* data; int len; } ;


 int FALSE ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int strlen (char const*) ;
 char* strstr (char const*,char const*) ;
 int * svn_stringbuf_ncreate (char const*,int,int *) ;

__attribute__((used)) static svn_error_t *
readline_handler_stringbuf(void *baton,
                           svn_stringbuf_t **stringbuf,
                           const char *eol,
                           svn_boolean_t *eof,
                           apr_pool_t *pool)
{
  struct stringbuf_stream_baton *btn = baton;
  const char *pos = btn->str->data + btn->amt_read;
  const char *eol_pos;

  eol_pos = strstr(pos, eol);
  if (eol_pos)
    {
      apr_size_t eol_len = strlen(eol);

      *eof = FALSE;
      *stringbuf = svn_stringbuf_ncreate(pos, eol_pos - pos, pool);
      btn->amt_read += (eol_pos - pos + eol_len);
    }
  else
    {
      *eof = TRUE;
      *stringbuf = svn_stringbuf_ncreate(pos, btn->str->len - btn->amt_read,
                                         pool);
      btn->amt_read = btn->str->len;
    }

  return SVN_NO_ERROR;
}
