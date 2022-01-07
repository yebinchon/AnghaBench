
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef scalar_t__ apr_uint64_t ;


 int SVN_ERR_WC_CORRUPT ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 scalar_t__ apr_strtoi64 (char*,int *,int) ;
 int svn_ctype_isxdigit (char) ;
 int * svn_error_create (int ,int *,int ) ;

__attribute__((used)) static svn_error_t *
read_escaped(char *result, char **buf, const char *end)
{
  apr_uint64_t val;
  char digits[3];

  if (end - *buf < 3 || **buf != 'x' || ! svn_ctype_isxdigit((*buf)[1])
      || ! svn_ctype_isxdigit((*buf)[2]))
    return svn_error_create(SVN_ERR_WC_CORRUPT, ((void*)0),
                            _("Invalid escape sequence"));
  (*buf)++;
  digits[0] = *((*buf)++);
  digits[1] = *((*buf)++);
  digits[2] = 0;
  if ((val = apr_strtoi64(digits, ((void*)0), 16)) == 0)
    return svn_error_create(SVN_ERR_WC_CORRUPT, ((void*)0),
                            _("Invalid escaped character"));
  *result = (char) val;
  return SVN_NO_ERROR;
}
