
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Adp_SetLogfile (scalar_t__) ;
 scalar_t__ log_filename ;
 int printf_filtered (char*,scalar_t__) ;
 scalar_t__ strlen (char*) ;
 int xfree (scalar_t__) ;
 scalar_t__ xstrdup (char*) ;

__attribute__((used)) static void
rdilogfile_command (char *arg, int from_tty)
{
  if (!arg || strlen (arg) == 0)
    {
      printf_filtered ("rdi log file is '%s'\n", log_filename);
      return;
    }

  if (log_filename)
    xfree (log_filename);

  log_filename = xstrdup (arg);

  Adp_SetLogfile (log_filename);
}
