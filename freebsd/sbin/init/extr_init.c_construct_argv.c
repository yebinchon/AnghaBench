
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (char**) ;
 scalar_t__ malloc (int) ;
 char* strk (char*) ;
 int strlen (char*) ;

__attribute__((used)) static char **
construct_argv(char *command)
{
 int argc = 0;
 char **argv = (char **) malloc(((strlen(command) + 1) / 2 + 1)
      * sizeof (char *));

 if ((argv[argc++] = strk(command)) == ((void*)0)) {
  free(argv);
  return (((void*)0));
 }
 while ((argv[argc++] = strk((char *) 0)) != ((void*)0))
  continue;
 return argv;
}
