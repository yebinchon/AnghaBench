
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ len; } ;
typedef TYPE_2__ svn_stringbuf_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
struct TYPE_9__ {int offset; TYPE_1__* value; } ;
typedef TYPE_3__ prop_read_baton_t ;
typedef scalar_t__ apr_uint64_t ;
typedef int apr_pool_t ;
struct TYPE_7__ {int len; char const* data; } ;


 int FALSE ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int svn_stringbuf_appendbyte (TYPE_2__*,char const) ;
 TYPE_2__* svn_stringbuf_create_ensure (int,int *) ;

__attribute__((used)) static svn_error_t *
readline_prop(void *baton, svn_stringbuf_t **line, const char **eol_str,
              svn_boolean_t *eof, apr_pool_t *result_pool,
              apr_pool_t *scratch_pool)
{
  prop_read_baton_t *b = baton;
  svn_stringbuf_t *str = ((void*)0);
  const char *c;
  svn_boolean_t found_eof;

  if ((apr_uint64_t)b->offset >= (apr_uint64_t)b->value->len)
    {
      *eol_str = ((void*)0);
      *eof = TRUE;
      *line = ((void*)0);
      return SVN_NO_ERROR;
    }



  *eol_str = ((void*)0);
  found_eof = FALSE;
  do
    {
      c = b->value->data + b->offset;
      b->offset++;

      if (*c == '\0')
        {
          found_eof = TRUE;
          break;
        }
      else if (*c == '\n')
        {
          *eol_str = "\n";
        }
      else if (*c == '\r')
        {
          *eol_str = "\r";
          if (*(c + 1) == '\n')
            {
              *eol_str = "\r\n";
              b->offset++;
            }
        }
      else
        {
          if (str == ((void*)0))
            str = svn_stringbuf_create_ensure(80, result_pool);
          svn_stringbuf_appendbyte(str, *c);
        }

      if (*eol_str)
        break;
    }
  while (c < b->value->data + b->value->len);

  if (eof)
    *eof = found_eof && !(str && str->len > 0);
  *line = str;

  return SVN_NO_ERROR;
}
