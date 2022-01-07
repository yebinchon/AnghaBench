
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CMD_ERROR ;
 int CMD_OK ;
 int VE_UNVERIFIED_OK ;
 char* command_errmsg ;
 int printf (char*,char*) ;
 int putenv (char*) ;
 char* strerror (int) ;
 int strlen (char const*) ;
 scalar_t__ strncmp (char*,char const*,int ) ;
 int ve_status_get (int) ;

__attribute__((used)) static int
command_set(int argc, char *argv[])
{
 int err;

 if (argc != 2) {
  command_errmsg = "wrong number of arguments";
  return (CMD_ERROR);
 } else {
  if ((err = putenv(argv[1])) != 0) {
   command_errmsg = strerror(err);
   return (CMD_ERROR);
  }
 }
 return (CMD_OK);
}
