
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SERIAL_TIMEOUT ;
 int fprintf_unfiltered (int ,char*) ;
 int fputc_readable (int,int ) ;
 int fputs_readable (char const*,int ) ;
 int gdb_stdlog ;
 int immediate_quit ;
 int mips_desc ;
 scalar_t__ remote_debug ;
 int serial_readchar (int ,int) ;

__attribute__((used)) static int
mips_expect_timeout (const char *string, int timeout)
{
  const char *p = string;

  if (remote_debug)
    {
      fprintf_unfiltered (gdb_stdlog, "Expected \"");
      fputs_readable (string, gdb_stdlog);
      fprintf_unfiltered (gdb_stdlog, "\", got \"");
    }

  immediate_quit++;
  while (1)
    {
      int c;




      c = serial_readchar (mips_desc, timeout);

      if (c == SERIAL_TIMEOUT)
 {
   if (remote_debug)
     fprintf_unfiltered (gdb_stdlog, "\": FAIL\n");
   return 0;
 }

      if (remote_debug)
 fputc_readable (c, gdb_stdlog);

      if (c == *p++)
 {
   if (*p == '\0')
     {
       immediate_quit--;
       if (remote_debug)
  fprintf_unfiltered (gdb_stdlog, "\": OK\n");
       return 1;
     }
 }
      else
 {
   p = string;
   if (c == *p)
     p++;
 }
    }
}
