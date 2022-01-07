
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CMD_ERROR ;
 int CMD_OK ;
 char* command_errmsg ;
 char* strerror (int) ;
 int unsetenv (char*) ;

__attribute__((used)) static int
command_unset(int argc, char *argv[])
{
 int err;

 if (argc != 2) {
  command_errmsg = "wrong number of arguments";
  return (CMD_ERROR);
 } else {
  if ((err = unsetenv(argv[1])) != 0) {
   command_errmsg = strerror(err);
   return (CMD_ERROR);
  }
 }
 return (CMD_OK);
}
