
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_stream_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef scalar_t__ apr_size_t ;


 scalar_t__ DIFFERENT_EOL_STRINGS (char*,scalar_t__,char const*,scalar_t__) ;
 int STRING_IS_EOL (char const*,scalar_t__) ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int ) ;
 int SVN_ERR_IO_INCONSISTENT_EOL ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 scalar_t__ memcmp (char const*,char const*,scalar_t__) ;
 int strncpy (char*,char const*,scalar_t__) ;
 int * svn_error_create (int ,int *,int *) ;
 int translate_write (int *,char const*,scalar_t__) ;

__attribute__((used)) static svn_error_t *
translate_newline(const char *eol_str,
                  apr_size_t eol_str_len,
                  char *src_format,
                  apr_size_t *src_format_len,
                  const char *newline_buf,
                  apr_size_t newline_len,
                  svn_stream_t *dst,
                  svn_boolean_t *translated_eol,
                  svn_boolean_t repair)
{
  SVN_ERR_ASSERT(STRING_IS_EOL(newline_buf, newline_len));



  if (*src_format_len)
    {


      if ((! repair) && DIFFERENT_EOL_STRINGS(src_format, *src_format_len,
                                              newline_buf, newline_len))
        return svn_error_create(SVN_ERR_IO_INCONSISTENT_EOL, ((void*)0), ((void*)0));
    }
  else
    {


      strncpy(src_format, newline_buf, newline_len);
      *src_format_len = newline_len;
    }


  SVN_ERR(translate_write(dst, eol_str, eol_str_len));



  if (translated_eol != ((void*)0) &&
      (eol_str_len != newline_len ||
       memcmp(eol_str, newline_buf, eol_str_len) != 0))
    *translated_eol = TRUE;

  return SVN_NO_ERROR;
}
