
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 char const* debug_file ;
 long debug_line ;
 int * debug_output ;
 int quiet_mode () ;
 char* strrchr (char const*,char) ;

void
svn_dbg__preamble(const char *file, long line, FILE *output)
{
  debug_output = output;

  if (output != ((void*)0) && !quiet_mode())
    {

      const char *slash = strrchr(file, '/');

      if (slash == ((void*)0))
        slash = strrchr(file, '\\');
      if (slash)
        debug_file = slash + 1;
      else
        debug_file = file;
    }
  debug_line = line;
}
