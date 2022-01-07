
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BE_MNT_FORCE ;
 int be ;
 int be_unmount (int ,char*,int) ;
 int fprintf (int ,char*,char*,...) ;
 int getopt (int,char**,char*) ;
 scalar_t__ optind ;
 int optopt ;
 int stderr ;
 int usage (int) ;

__attribute__((used)) static int
bectl_cmd_unmount(int argc, char *argv[])
{
 char *bootenv, *cmd;
 int err, flags, opt;


 cmd = argv[0];

 flags = 0;
 while ((opt = getopt(argc, argv, "f")) != -1) {
  switch (opt) {
  case 'f':
   flags |= BE_MNT_FORCE;
   break;
  default:
   fprintf(stderr, "bectl %s: unknown option '-%c'\n",
       cmd, optopt);
   return (usage(0));
  }
 }

 argc -= optind;
 argv += optind;

 if (argc != 1) {
  fprintf(stderr, "bectl %s: wrong number of arguments\n", cmd);
  return (usage(0));
 }

 bootenv = argv[0];

 err = be_unmount(be, bootenv, flags);

 switch (err) {
 case 128:
  break;
 default:
  fprintf(stderr, "failed to unmount bootenv %s\n", bootenv);
 }

 return (err);
}
