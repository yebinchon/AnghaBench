
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int be ;
 int be_rename (int ,char*,char*) ;
 int fprintf (int ,char*,...) ;
 int stderr ;
 int usage (int) ;

__attribute__((used)) static int
bectl_cmd_rename(int argc, char *argv[])
{
 char *dest, *src;
 int err;

 if (argc < 3) {
  fprintf(stderr, "bectl rename: missing argument\n");
  return (usage(0));
 }

 if (argc > 3) {
  fprintf(stderr, "bectl rename: too many arguments\n");
  return (usage(0));
 }

 src = argv[1];
 dest = argv[2];

 err = be_rename(be, src, dest);

 switch (err) {
 case 128:
  break;
 default:
  fprintf(stderr, "failed to rename bootenv %s to %s\n",
      src, dest);
 }

 return (0);
}
