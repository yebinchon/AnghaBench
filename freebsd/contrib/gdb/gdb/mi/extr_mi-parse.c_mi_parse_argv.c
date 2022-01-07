
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mi_parse {char** argv; int argc; } ;


 int freeargv (char**) ;
 scalar_t__ isspace (char) ;
 char parse_escape (char**) ;
 int strncpy (char*,char*,int) ;
 void* xmalloc (int) ;
 char** xrealloc (char**,int) ;

__attribute__((used)) static void
mi_parse_argv (char *args, struct mi_parse *parse)
{
  char *chp = args;
  int argc = 0;
  char **argv = xmalloc ((argc + 1) * sizeof (char *));
  argv[argc] = ((void*)0);
  while (1)
    {
      char *arg;

      while (isspace (*chp))
 chp++;

      switch (*chp)
 {
 case '\0':
   parse->argv = argv;
   parse->argc = argc;
   return;
 case '"':
   {

     int len;
     char *start = chp + 1;

     chp = start;
     len = 0;
     while (*chp != '\0' && *chp != '"')
       {
  if (*chp == '\\')
    {
      chp++;
      if (parse_escape (&chp) <= 0)
        {

   freeargv (argv);
   return;
        }
    }
  else
    chp++;
  len++;
       }

     if (*chp != '"')
       {
  freeargv (argv);
  return;
       }

     if (chp[1] != '\0' && !isspace (chp[1]))
       {
  freeargv (argv);
  return;
       }

     arg = xmalloc ((len + 1) * sizeof (char));

     chp = start;
     len = 0;
     while (*chp != '\0' && *chp != '"')
       {
  if (*chp == '\\')
    {
      chp++;
      arg[len] = parse_escape (&chp);
    }
  else
    arg[len] = *chp++;
  len++;
       }
     arg[len] = '\0';
     chp++;
     break;
   }
 default:
   {


     int len;
     char *start = chp;
     while (*chp != '\0' && !isspace (*chp))
       {
  chp++;
       }
     len = chp - start;
     arg = xmalloc ((len + 1) * sizeof (char));
     strncpy (arg, start, len);
     arg[len] = '\0';
     break;
   }
 }

      argv = xrealloc (argv, (argc + 2) * sizeof (char *));
      argv[argc++] = arg;
      argv[argc] = ((void*)0);
    }
}
