
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct command_map_entry {int (* fn ) (int,char**) ;int silent; } ;


 int * be ;
 int fprintf (int ,char*,char const*) ;
 struct command_map_entry* get_cmd_info (char const*) ;
 int libbe_close (int *) ;
 int * libbe_init (char*) ;
 int libbe_print_on_error (int *,int) ;
 int stderr ;
 scalar_t__ strcmp (char const*,char*) ;
 char* strdup (char*) ;
 int stub1 (int,char**) ;
 int usage (int) ;

int
main(int argc, char *argv[])
{
 struct command_map_entry *cmd;
 const char *command;
 char *root;
 int rc;

 cmd = ((void*)0);
 root = ((void*)0);
 if (argc < 2)
  return (usage(0));

 if (strcmp(argv[1], "-r") == 0) {
  if (argc < 4)
   return (usage(0));
  root = strdup(argv[2]);
  command = argv[3];
  argc -= 3;
  argv += 3;
 } else {
  command = argv[1];
  argc -= 1;
  argv += 1;
 }


 if (strcmp(command, "umount") == 0)
  command = "unmount";

 if (strcmp(command, "ujail") == 0)
  command = "unjail";

 if ((strcmp(command, "-?") == 0) || (strcmp(command, "-h") == 0))
  return (usage(1));

 if ((cmd = get_cmd_info(command)) == ((void*)0)) {
  fprintf(stderr, "unknown command: %s\n", command);
  return (usage(0));
 }

 if ((be = libbe_init(root)) == ((void*)0))
  return (-1);

 libbe_print_on_error(be, !cmd->silent);

 rc = cmd->fn(argc, argv);

 libbe_close(be);
 return (rc);
}
