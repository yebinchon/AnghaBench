
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ db_command_trimmable (char) ;
 int strlen (char*) ;

__attribute__((used)) static void
db_command_trim(char **commandp)
{
 char *command;

 command = *commandp;
 while (db_command_trimmable(*command))
  command++;
 while ((strlen(command) > 0) &&
     db_command_trimmable(command[strlen(command) - 1]))
  command[strlen(command) - 1] = 0;
 *commandp = command;
}
