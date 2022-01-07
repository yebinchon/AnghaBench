
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct command_map_entry {int command; } ;


 struct command_map_entry* command_map ;
 size_t nitems (struct command_map_entry*) ;
 scalar_t__ strcmp (char const*,int ) ;

__attribute__((used)) static struct command_map_entry *
get_cmd_info(const char *cmd)
{
 size_t i;

 for (i = 0; i < nitems(command_map); ++i) {
  if (strcmp(cmd, command_map[i].command) == 0)
   return (&command_map[i]);
 }

 return (((void*)0));
}
