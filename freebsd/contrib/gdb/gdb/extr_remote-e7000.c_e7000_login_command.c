
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* dir ;
 int error (char*) ;
 void* machine ;
 void* next (char**) ;
 void* passwd ;
 int printf_unfiltered (char*,void*,void*,void*,void*) ;
 void* user ;

__attribute__((used)) static void
e7000_login_command (char *args, int from_tty)
{
  if (args)
    {
      machine = next (&args);
      user = next (&args);
      passwd = next (&args);
      dir = next (&args);
      if (from_tty)
 {
   printf_unfiltered ("Set info to %s %s %s %s\n", machine, user, passwd, dir);
 }
    }
  else
    {
      error ("Syntax is ftplogin <machine> <user> <passwd> <directory>");
    }
}
