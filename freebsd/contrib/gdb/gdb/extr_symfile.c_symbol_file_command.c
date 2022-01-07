
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cleanup {int dummy; } ;


 int OBJF_READNOW ;
 int OBJF_USERLOADED ;
 char** buildargv (char*) ;
 int do_cleanups (struct cleanup*) ;
 int dont_repeat () ;
 int error (char*,...) ;
 struct cleanup* make_cleanup_freeargv (char**) ;
 int nomem (int ) ;
 scalar_t__ strcmp (char*,char*) ;
 int symbol_file_add_main_1 (char*,int,int) ;
 int symbol_file_clear (int) ;

void
symbol_file_command (char *args, int from_tty)
{
  char **argv;
  char *name = ((void*)0);
  struct cleanup *cleanups;
  int flags = OBJF_USERLOADED;

  dont_repeat ();

  if (args == ((void*)0))
    {
      symbol_file_clear (from_tty);
    }
  else
    {
      if ((argv = buildargv (args)) == ((void*)0))
 {
   nomem (0);
 }
      cleanups = make_cleanup_freeargv (argv);
      while (*argv != ((void*)0))
 {
   if (strcmp (*argv, "-readnow") == 0)
     flags |= OBJF_READNOW;
   else if (**argv == '-')
     error ("unknown option `%s'", *argv);
   else
     {
       name = *argv;

       symbol_file_add_main_1 (name, from_tty, flags);
     }
   argv++;
 }

      if (name == ((void*)0))
 {
   error ("no symbol file name was specified");
 }
      do_cleanups (cleanups);
    }
}
