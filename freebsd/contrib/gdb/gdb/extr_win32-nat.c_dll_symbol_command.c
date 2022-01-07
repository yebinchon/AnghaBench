
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OBJF_SHARED ;
 int OBJF_USERLOADED ;
 scalar_t__ alloca (int) ;
 int dont_repeat () ;
 int error (char*) ;
 int safe_symbol_file_add (char*,int,int *,int ,int) ;
 scalar_t__ strcasecmp (char*,char*) ;
 int strcat (char*,char*) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;

void
dll_symbol_command (char *args, int from_tty)
{
  int n;
  dont_repeat ();

  if (args == ((void*)0))
    error ("dll-symbols requires a file name");

  n = strlen (args);
  if (n > 4 && strcasecmp (args + n - 4, ".dll") != 0)
    {
      char *newargs = (char *) alloca (n + 4 + 1);
      strcpy (newargs, args);
      strcat (newargs, ".dll");
      args = newargs;
    }

  safe_symbol_file_add (args, from_tty, ((void*)0), 0, OBJF_SHARED | OBJF_USERLOADED);
}
