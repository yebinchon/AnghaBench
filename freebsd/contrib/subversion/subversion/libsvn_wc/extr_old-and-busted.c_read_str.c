
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char* data; } ;
typedef TYPE_1__ svn_stringbuf_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_WC_CORRUPT ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 char* apr_pstrndup (int *,char const*,int) ;
 int read_escaped (char*,char**,char const*) ;
 int * svn_error_create (int ,int *,int ) ;
 int svn_stringbuf_appendbyte (TYPE_1__*,char) ;
 int svn_stringbuf_appendbytes (TYPE_1__*,char const*,int) ;
 TYPE_1__* svn_stringbuf_ncreate (char const*,int,int *) ;

__attribute__((used)) static svn_error_t *
read_str(const char **result,
         char **buf, const char *end,
         apr_pool_t *pool)
{
  svn_stringbuf_t *s = ((void*)0);
  const char *start;
  if (*buf == end)
    return svn_error_create(SVN_ERR_WC_CORRUPT, ((void*)0),
                            _("Unexpected end of entry"));
  if (**buf == '\n')
    {
      *result = ((void*)0);
      (*buf)++;
      return SVN_NO_ERROR;
    }

  start = *buf;
  while (*buf != end && **buf != '\n')
    {
      if (**buf == '\\')
        {
          char c;
          if (! s)
            s = svn_stringbuf_ncreate(start, *buf - start, pool);
          else
            svn_stringbuf_appendbytes(s, start, *buf - start);
          (*buf)++;
          SVN_ERR(read_escaped(&c, buf, end));
          svn_stringbuf_appendbyte(s, c);
          start = *buf;
        }
      else
        (*buf)++;
    }

  if (*buf == end)
    return svn_error_create(SVN_ERR_WC_CORRUPT, ((void*)0),
                            _("Unexpected end of entry"));

  if (s)
    {
      svn_stringbuf_appendbytes(s, start, *buf - start);
      *result = s->data;
    }
  else
    *result = apr_pstrndup(pool, start, *buf - start);
  (*buf)++;
  return SVN_NO_ERROR;
}
