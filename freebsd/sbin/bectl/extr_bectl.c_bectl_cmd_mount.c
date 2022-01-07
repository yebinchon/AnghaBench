
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BE_MAXPATHLEN ;
 int BE_MNT_DEEP ;
 int be ;
 int be_mount (int ,char*,char*,int,char*) ;
 int fprintf (int ,char*,...) ;
 int printf (char*,char*,char*) ;
 int stderr ;
 int usage (int) ;

__attribute__((used)) static int
bectl_cmd_mount(int argc, char *argv[])
{
 char result_loc[BE_MAXPATHLEN];
 char *bootenv, *mountpoint;
 int err, mntflags;


 mntflags = BE_MNT_DEEP;
 if (argc < 2) {
  fprintf(stderr, "bectl mount: missing argument(s)\n");
  return (usage(0));
 }

 if (argc > 3) {
  fprintf(stderr, "bectl mount: too many arguments\n");
  return (usage(0));
 }

 bootenv = argv[1];
 mountpoint = ((argc == 3) ? argv[2] : ((void*)0));

 err = be_mount(be, bootenv, mountpoint, mntflags, result_loc);

 switch (err) {
 case 128:
  printf("successfully mounted %s at %s\n", bootenv, result_loc);
  break;
 default:
  fprintf(stderr,
      (argc == 3) ? "failed to mount bootenv %s at %s\n" :
      "failed to mount bootenv %s at temporary path %s\n",
      bootenv, mountpoint);
 }

 return (err);
}
