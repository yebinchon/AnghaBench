
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf_unfiltered (int ,char*,int) ;
 int fputc_unfiltered (int,int ) ;
 int fputs_unfiltered (char*,int ) ;
 int gdb_stdlog ;
 int isprint (int) ;
 scalar_t__ strcmp (char*,char*) ;

void
puts_debug (char *prefix, char *string, char *suffix)
{
  int ch;


  static int new_line = 1;
  static int return_p = 0;
  static char *prev_prefix = "";
  static char *prev_suffix = "";

  if (*string == '\n')
    return_p = 0;



  if ((return_p || (strcmp (prev_prefix, prefix) != 0)) && !new_line)
    {
      fputs_unfiltered (prev_suffix, gdb_stdlog);
      fputs_unfiltered ("\n", gdb_stdlog);
      fputs_unfiltered (prefix, gdb_stdlog);
    }


  if (new_line)
    {
      new_line = 0;
      fputs_unfiltered (prefix, gdb_stdlog);
    }

  prev_prefix = prefix;
  prev_suffix = suffix;


  while ((ch = *string++) != '\0')
    {
      switch (ch)
 {
 default:
   if (isprint (ch))
     fputc_unfiltered (ch, gdb_stdlog);

   else
     fprintf_unfiltered (gdb_stdlog, "\\x%02x", ch & 0xff);
   break;

 case '\\':
   fputs_unfiltered ("\\\\", gdb_stdlog);
   break;
 case '\b':
   fputs_unfiltered ("\\b", gdb_stdlog);
   break;
 case '\f':
   fputs_unfiltered ("\\f", gdb_stdlog);
   break;
 case '\n':
   new_line = 1;
   fputs_unfiltered ("\\n", gdb_stdlog);
   break;
 case '\r':
   fputs_unfiltered ("\\r", gdb_stdlog);
   break;
 case '\t':
   fputs_unfiltered ("\\t", gdb_stdlog);
   break;
 case '\v':
   fputs_unfiltered ("\\v", gdb_stdlog);
   break;
 }

      return_p = ch == '\r';
    }


  if (new_line)
    {
      fputs_unfiltered (suffix, gdb_stdlog);
      fputs_unfiltered ("\n", gdb_stdlog);
    }
}
