
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CMD_ERROR ;
 int CMD_OK ;
 char* command_errmsg ;
 char* getenv (char*) ;
 char* strerror (int) ;
 int zfs_bootenv (char*) ;

__attribute__((used)) static int
command_reloadbe(int argc, char *argv[])
{
 int err;
 char *root;

 if (argc > 2) {
  command_errmsg = "wrong number of arguments";
  return (CMD_ERROR);
 }

 if (argc == 2) {
  err = zfs_bootenv(argv[1]);
 } else {
  root = getenv("zfs_be_root");
  if (root == ((void*)0)) {

   return (CMD_OK);
  }
  err = zfs_bootenv(root);
 }

 if (err != 0) {
  command_errmsg = strerror(err);
  return (CMD_ERROR);
 }

 return (CMD_OK);
}
