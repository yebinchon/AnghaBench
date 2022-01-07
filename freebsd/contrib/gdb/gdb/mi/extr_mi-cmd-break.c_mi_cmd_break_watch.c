
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mi_opt {char* member_0; int member_1; int member_2; } ;
typedef enum wp_type { ____Placeholder_wp_type } wp_type ;
typedef enum opt { ____Placeholder_opt } opt ;
typedef enum mi_cmd_result { ____Placeholder_mi_cmd_result } mi_cmd_result ;



 int FROM_TTY ;
 int MI_CMD_DONE ;


 int awatch_command_wrapper (char*,int ) ;
 int error (char*) ;
 int mi_getopt (char*,int,char**,struct mi_opt*,int*,char**) ;
 int rwatch_command_wrapper (char*,int ) ;
 int watch_command_wrapper (char*,int ) ;

enum mi_cmd_result
mi_cmd_break_watch (char *command, char **argv, int argc)
{
  char *expr = ((void*)0);
  enum wp_type type = 128;
  enum opt
    {
      READ_OPT, ACCESS_OPT
    };
  static struct mi_opt opts[] =
  {
    {"r", READ_OPT, 0},
    {"a", ACCESS_OPT, 0},
    0
  };


  int optind = 0;
  char *optarg;
  while (1)
    {
      int opt = mi_getopt ("mi_cmd_break_watch", argc, argv, opts, &optind, &optarg);
      if (opt < 0)
 break;
      switch ((enum opt) opt)
 {
 case READ_OPT:
   type = 129;
   break;
 case ACCESS_OPT:
   type = 130;
   break;
 }
    }
  if (optind >= argc)
    error ("mi_cmd_break_watch: Missing <expression>");
  if (optind < argc - 1)
    error ("mi_cmd_break_watch: Garbage following <expression>");
  expr = argv[optind];


  switch (type)
    {
    case 128:
      watch_command_wrapper (expr, FROM_TTY);
      break;
    case 129:
      rwatch_command_wrapper (expr, FROM_TTY);
      break;
    case 130:
      awatch_command_wrapper (expr, FROM_TTY);
      break;
    default:
      error ("mi_cmd_break_watch: Unknown watchpoint type.");
    }
  return MI_CMD_DONE;
}
