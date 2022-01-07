
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum ubenv_action { ____Placeholder_ubenv_action } ubenv_action ;


 int CMD_ERROR ;
 int CMD_OK ;
 int UBENV_IMPORT ;
 int UBENV_SHOW ;
 int UBENV_UNKNOWN ;
 char* command_errmsg ;
 int handle_uboot_env_var (int,char const*) ;
 scalar_t__ strcasecmp (char*,char*) ;
 char* ub_env_enum (char const*) ;

__attribute__((used)) static int
command_ubenv(int argc, char *argv[])
{
 enum ubenv_action action;
 const char *var;
 int i;

 action = UBENV_UNKNOWN;
 if (argc > 1) {
  if (strcasecmp(argv[1], "import") == 0)
   action = UBENV_IMPORT;
  else if (strcasecmp(argv[1], "show") == 0)
   action = UBENV_SHOW;
 }
 if (action == UBENV_UNKNOWN) {
  command_errmsg = "usage: 'ubenv <import|show> [var ...]";
  return (CMD_ERROR);
 }

 if (argc > 2) {
  for (i = 2; i < argc; i++)
   handle_uboot_env_var(action, argv[i]);
 } else {
  var = ((void*)0);
  for (;;) {
   if ((var = ub_env_enum(var)) == ((void*)0))
    break;
   handle_uboot_env_var(action, var);
  }
 }

 return (CMD_OK);
}
