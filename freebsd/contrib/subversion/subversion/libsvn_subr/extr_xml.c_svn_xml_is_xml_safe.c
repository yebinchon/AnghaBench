
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_boolean_t ;
typedef int apr_size_t ;


 int FALSE ;
 unsigned char SVN_CTYPE_ASCII_CARRIAGERETURN ;
 unsigned char SVN_CTYPE_ASCII_DELETE ;
 unsigned char SVN_CTYPE_ASCII_LINEFEED ;
 unsigned char SVN_CTYPE_ASCII_TAB ;
 int TRUE ;
 scalar_t__ svn_ctype_iscntrl (unsigned char) ;
 int svn_utf__is_valid (char const*,int) ;

svn_boolean_t
svn_xml_is_xml_safe(const char *data, apr_size_t len)
{
  const char *end = data + len;
  const char *p;

  if (! svn_utf__is_valid(data, len))
    return FALSE;

  for (p = data; p < end; p++)
    {
      unsigned char c = *p;

      if (svn_ctype_iscntrl(c))
        {
          if ((c != SVN_CTYPE_ASCII_TAB)
              && (c != SVN_CTYPE_ASCII_LINEFEED)
              && (c != SVN_CTYPE_ASCII_CARRIAGERETURN)
              && (c != SVN_CTYPE_ASCII_DELETE))
            return FALSE;
        }
    }
  return TRUE;
}
