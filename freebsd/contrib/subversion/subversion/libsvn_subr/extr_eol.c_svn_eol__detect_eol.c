
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_size_t ;


 char* svn_eol__find_eol_start (char*,int) ;

const char *
svn_eol__detect_eol(char *buf, apr_size_t len, char **eolp)
{
  char *eol;

  eol = svn_eol__find_eol_start(buf, len);
  if (eol)
    {
      if (eolp)
        *eolp = eol;

      if (*eol == '\n')
        return "\n";


      ++eol;
      if (eol == buf + len || *eol != '\n')
        return "\r";
      return "\r\n";
    }

  return ((void*)0);
}
