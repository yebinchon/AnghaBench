
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cleanup {int dummy; } ;
struct backtrace_command_args {char* count_exp; int show_locals; int from_tty; } ;


 int RETURN_MASK_ERROR ;
 int backtrace_command_stub ;
 char** buildargv (char*) ;
 int catch_errors (int ,char*,char*,int ) ;
 int do_cleanups (struct cleanup*) ;
 struct cleanup* make_cleanup_freeargv (char**) ;
 int memset (char*,int ,int) ;
 int nomem (int ) ;
 int strcat (char*,char*) ;
 int strlen (char*) ;
 scalar_t__ subset_compare (char*,char*) ;
 char tolower (char) ;
 int xfree (char*) ;
 scalar_t__ xmalloc (int) ;

__attribute__((used)) static void
backtrace_command (char *arg, int from_tty)
{
  struct cleanup *old_chain = (struct cleanup *) ((void*)0);
  char **argv = (char **) ((void*)0);
  int argIndicatingFullTrace = (-1), totArgLen = 0, argc = 0;
  char *argPtr = arg;
  struct backtrace_command_args btargs;

  if (arg != (char *) ((void*)0))
    {
      int i;

      argv = buildargv (arg);
      old_chain = make_cleanup_freeargv (argv);
      argc = 0;
      for (i = 0; (argv[i] != (char *) ((void*)0)); i++)
 {
   unsigned int j;

   for (j = 0; (j < strlen (argv[i])); j++)
     argv[i][j] = tolower (argv[i][j]);

   if (argIndicatingFullTrace < 0 && subset_compare (argv[i], "full"))
     argIndicatingFullTrace = argc;
   else
     {
       argc++;
       totArgLen += strlen (argv[i]);
     }
 }
      totArgLen += argc;
      if (argIndicatingFullTrace >= 0)
 {
   if (totArgLen > 0)
     {
       argPtr = (char *) xmalloc (totArgLen + 1);
       if (!argPtr)
  nomem (0);
       else
  {
    memset (argPtr, 0, totArgLen + 1);
    for (i = 0; (i < (argc + 1)); i++)
      {
        if (i != argIndicatingFullTrace)
   {
     strcat (argPtr, argv[i]);
     strcat (argPtr, " ");
   }
      }
  }
     }
   else
     argPtr = (char *) ((void*)0);
 }
    }

  btargs.count_exp = argPtr;
  btargs.show_locals = (argIndicatingFullTrace >= 0);
  btargs.from_tty = from_tty;
  catch_errors (backtrace_command_stub, (char *)&btargs, "", RETURN_MASK_ERROR);

  if (argIndicatingFullTrace >= 0 && totArgLen > 0)
    xfree (argPtr);

  if (old_chain)
    do_cleanups (old_chain);
}
