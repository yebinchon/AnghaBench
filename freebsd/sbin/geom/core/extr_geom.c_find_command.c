
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_command {int * gc_name; } ;


 int GEOM_CLASS_CMDS ;
 int GEOM_STD_CMDS ;
 struct g_command* class_commands ;
 struct g_command* std_commands ;
 scalar_t__ strcmp (int *,char const*) ;

__attribute__((used)) static struct g_command *
find_command(const char *cmdstr, int flags)
{
 struct g_command *cmd;
 unsigned i;




 if ((flags & GEOM_CLASS_CMDS) != 0 && class_commands != ((void*)0)) {
  for (i = 0; ; i++) {
   cmd = &class_commands[i];
   if (cmd->gc_name == ((void*)0))
    break;
   if (strcmp(cmd->gc_name, cmdstr) == 0)
    return (cmd);
  }
 }



 if ((flags & GEOM_STD_CMDS) != 0) {
  for (i = 0; ; i++) {
   cmd = &std_commands[i];
   if (cmd->gc_name == ((void*)0))
    break;
   if (strcmp(cmd->gc_name, cmdstr) == 0)
    return (cmd);
  }
 }
 return (((void*)0));
}
