
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_command {int * gc_name; } ;


 int EXIT_FAILURE ;
 int GEOM_CLASS_CMDS ;
 struct g_command* class_commands ;
 int * class_name ;
 int exit (int ) ;
 int * find_command (int *,int ) ;
 int fprintf (int ,char*) ;
 struct g_command* std_commands ;
 int stderr ;
 int usage_command (struct g_command*,char const*) ;

__attribute__((used)) static void
usage(void)
{

 if (class_name == ((void*)0)) {
  fprintf(stderr, "usage: geom <class> <command> [options]\n");
  fprintf(stderr, "       geom -p <provider-name>\n");
  fprintf(stderr, "       geom -t\n");
  exit(EXIT_FAILURE);
 } else {
  struct g_command *cmd;
  const char *prefix;
  unsigned i;

  prefix = "usage:";
  if (class_commands != ((void*)0)) {
   for (i = 0; ; i++) {
    cmd = &class_commands[i];
    if (cmd->gc_name == ((void*)0))
     break;
    usage_command(cmd, prefix);
    prefix = "      ";
   }
  }
  for (i = 0; ; i++) {
   cmd = &std_commands[i];
   if (cmd->gc_name == ((void*)0))
    break;





   if (find_command(cmd->gc_name, GEOM_CLASS_CMDS) != ((void*)0))
    continue;
   usage_command(cmd, prefix);
   prefix = "      ";
  }
  exit(EXIT_FAILURE);
 }
}
