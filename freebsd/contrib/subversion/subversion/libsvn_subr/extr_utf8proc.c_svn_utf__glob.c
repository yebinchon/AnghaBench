
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int* data; } ;
typedef TYPE_1__ svn_membuf_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_ssize_t ;
typedef scalar_t__ apr_size_t ;
typedef int apr_int32_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_UTF8PROC_ERROR ;
 int SVN_ERR_UTF8_GLOB ;
 int * SVN_NO_ERROR ;
 scalar_t__ SVN_UTF__UNKNOWN_LENGTH ;
 int TRUE ;
 int const UTF8PROC_DECOMPOSE ;
 int UTF8PROC_NULLTERM ;
 int const UTF8PROC_STABLE ;
 int _ (char*) ;
 int apr_fnmatch (int*,int*,int ) ;
 int decompose_normalized (scalar_t__*,char const*,scalar_t__,TYPE_1__*) ;
 int encode_ucs4 (TYPE_1__*,int const,scalar_t__*) ;
 int gettext (int ) ;
 int * svn_error_create (int ,int *,int ) ;
 int * svn_error_createf (int ,int *,int ,long) ;
 int svn_membuf__ensure (TYPE_1__*,scalar_t__) ;
 int svn_membuf__resize (TYPE_1__*,scalar_t__) ;
 int svn_utf__encode_ucs4_string (TYPE_1__*,int*,scalar_t__,scalar_t__*) ;
 int utf8proc_decompose (void const*,scalar_t__,int*,int,int const) ;
 int utf8proc_errmsg (int) ;

svn_error_t *
svn_utf__glob(svn_boolean_t *match,
              const char *pattern, apr_size_t pattern_len,
              const char *string, apr_size_t string_len,
              const char *escape, apr_size_t escape_len,
              svn_boolean_t sql_like,
              svn_membuf_t *pattern_buf,
              svn_membuf_t *string_buf,
              svn_membuf_t *temp_buf)
{
  apr_size_t patternbuf_len;
  apr_size_t tempbuf_len;


  if (escape && !sql_like)
    return svn_error_create(SVN_ERR_UTF8_GLOB, ((void*)0),
                            _("Cannot use a custom escape token"
                              " in glob matching mode"));



  SVN_ERR(decompose_normalized(&tempbuf_len, pattern, pattern_len, temp_buf));
  if (!sql_like)
    SVN_ERR(svn_utf__encode_ucs4_string(pattern_buf, temp_buf->data,
                                        tempbuf_len, &patternbuf_len));
  else
    {

      const apr_int32_t *like = temp_buf->data;
      apr_int32_t ucs4esc;
      svn_boolean_t escaped;
      apr_size_t i;

      if (!escape)
        ucs4esc = -1;
      else
        {
          const int nullterm = (escape_len == SVN_UTF__UNKNOWN_LENGTH
                                ? UTF8PROC_NULLTERM : 0);
          apr_ssize_t result =
            utf8proc_decompose((const void*) escape, escape_len, &ucs4esc, 1,
                               UTF8PROC_DECOMPOSE | UTF8PROC_STABLE | nullterm);
          if (result < 0)
            return svn_error_create(SVN_ERR_UTF8PROC_ERROR, ((void*)0),
                                    gettext(utf8proc_errmsg(result)));
          if (result == 0 || result > 1)
            return svn_error_create(SVN_ERR_UTF8_GLOB, ((void*)0),
                                    _("Escape token must be one character"));
          if ((ucs4esc & 0xFF) != ucs4esc)
            return svn_error_createf(SVN_ERR_UTF8_GLOB, ((void*)0),
                                     _("Invalid escape character U+%04lX"),
                                     (long)ucs4esc);
        }

      patternbuf_len = 0;
      svn_membuf__ensure(pattern_buf, tempbuf_len + 1);
      for (i = 0, escaped = FALSE; i < tempbuf_len; ++i, ++like)
        {
          if (*like == ucs4esc && !escaped)
            {
              svn_membuf__resize(pattern_buf, patternbuf_len + 1);
              ((char*)pattern_buf->data)[patternbuf_len++] = '\\';
              escaped = TRUE;
            }
          else if (escaped)
            {
              SVN_ERR(encode_ucs4(pattern_buf, *like, &patternbuf_len));
              escaped = FALSE;
            }
          else
            {
              if ((*like == '[' || *like == '\\') && !escaped)
                {


                  svn_membuf__resize(pattern_buf, patternbuf_len + 1);
                  ((char*)pattern_buf->data)[patternbuf_len++] = '\\';
                  escaped = TRUE;
                  --i; --like;
                  continue;
                }


              if (*like == '%' || *like == '_')
                {
                  const char wildcard = (*like == '%' ? '*' : '?');
                  svn_membuf__resize(pattern_buf, patternbuf_len + 1);
                  ((char*)pattern_buf->data)[patternbuf_len++] = wildcard;
                }
              else
                SVN_ERR(encode_ucs4(pattern_buf, *like, &patternbuf_len));
            }
        }
      svn_membuf__resize(pattern_buf, patternbuf_len + 1);
      ((char*)pattern_buf->data)[patternbuf_len] = '\0';
    }


  SVN_ERR(decompose_normalized(&tempbuf_len, string, string_len, temp_buf));
  SVN_ERR(svn_utf__encode_ucs4_string(string_buf, temp_buf->data,
                                      tempbuf_len, &tempbuf_len));

  *match = !apr_fnmatch(pattern_buf->data, string_buf->data, 0);
  return SVN_NO_ERROR;
}
