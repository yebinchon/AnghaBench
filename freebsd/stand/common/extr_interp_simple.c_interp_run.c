
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CMD_ERROR ;
 int CMD_OK ;
 char* command_errmsg ;
 int free (char**) ;
 scalar_t__ interp_builtin_cmd (int,char**) ;
 scalar_t__ parse (int*,char***,char const*) ;
 int printf (char*,...) ;

int
interp_run(const char *input)
{
 int argc;
 char **argv;

 if (parse(&argc, &argv, input)) {
  printf("parse error\n");
  return CMD_ERROR;
 }

 if (interp_builtin_cmd(argc, argv)) {
  printf("%s: %s\n", argv[0], command_errmsg);
  free(argv);
  return CMD_ERROR;
 }
 free(argv);
 return CMD_OK;
}
