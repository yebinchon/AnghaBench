
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAXPATHLEN ;
 int be ;
 scalar_t__ be_mounted_at (int ,char*,int *) ;
 int be_unmount (int ,char*,int ) ;
 int bectl_jail_cleanup (char*,int) ;
 int bectl_locate_jail (char*) ;
 int bzero (char**,int) ;
 int fprintf (int ,char*,char*,...) ;
 int free (char*) ;
 char* jail_getname (int) ;
 int jail_getv (int ,char*,char*,char*,char*,int *) ;
 int stderr ;
 int usage (int) ;

int
bectl_cmd_unjail(int argc, char *argv[])
{
 char path[MAXPATHLEN];
 char *cmd, *name, *target;
 int jid;


 cmd = argv[0];

 if (argc != 2) {
  fprintf(stderr, "bectl %s: wrong number of arguments\n", cmd);
  return (usage(0));
 }

 target = argv[1];


 if ((jid = bectl_locate_jail(target)) == -1) {
  fprintf(stderr, "bectl %s: failed to locate BE by '%s'\n", cmd,
      target);
  return (1);
 }

 bzero(&path, MAXPATHLEN);
 name = jail_getname(jid);
 if (jail_getv(0, "name", name, "path", path, ((void*)0)) != jid) {
  free(name);
  fprintf(stderr,
      "bectl %s: failed to get path for jail requested by '%s'\n",
      cmd, target);
  return (1);
 }

 free(name);

 if (be_mounted_at(be, path, ((void*)0)) != 0) {
  fprintf(stderr, "bectl %s: jail requested by '%s' not a BE\n",
      cmd, target);
  return (1);
 }

 bectl_jail_cleanup(path, jid);
 be_unmount(be, target, 0);

 return (0);
}
