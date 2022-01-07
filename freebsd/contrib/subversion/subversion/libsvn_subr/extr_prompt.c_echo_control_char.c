
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_file_t ;


 int apr_file_putc (char const,int *) ;
 scalar_t__ svn_ctype_iscntrl (char) ;
 scalar_t__ svn_ctype_isprint (char) ;

__attribute__((used)) static void
echo_control_char(char ch, apr_file_t *outfd)
{
  if (svn_ctype_iscntrl(ch))
    {
      const char substitute = (ch < 32? '@' + ch : '?');
      apr_file_putc('^', outfd);
      apr_file_putc(substitute, outfd);
    }
  else if (svn_ctype_isprint(ch))
    {

      apr_file_putc(ch, outfd);
    }
  else
    {

      apr_file_putc('^', outfd);
      apr_file_putc('!', outfd);
    }
}
