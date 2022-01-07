
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * commandline ;
 int xasprintf (int **,char*,char*,char*) ;
 int xfree (int *) ;

__attribute__((used)) static void
rdp_set_command_line (char *command, char *args)
{






  if (commandline != ((void*)0))
    xfree (commandline);

  xasprintf (&commandline, "%s %s", command, args);
}
