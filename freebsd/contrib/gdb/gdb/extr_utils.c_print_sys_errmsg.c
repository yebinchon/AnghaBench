
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ alloca (scalar_t__) ;
 int fprintf_unfiltered (int ,char*,char*) ;
 int gdb_flush (int ) ;
 int gdb_stderr ;
 int gdb_stdout ;
 char* safe_strerror (int) ;
 int strcat (char*,char*) ;
 int strcpy (char*,char const*) ;
 scalar_t__ strlen (char const*) ;

void
print_sys_errmsg (const char *string, int errcode)
{
  char *err;
  char *combined;

  err = safe_strerror (errcode);
  combined = (char *) alloca (strlen (err) + strlen (string) + 3);
  strcpy (combined, string);
  strcat (combined, ": ");
  strcat (combined, err);



  gdb_flush (gdb_stdout);
  fprintf_unfiltered (gdb_stderr, "%s.\n", combined);
}
