
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EX_USAGE ;
 int STDOUT_FILENO ;
 int be ;
 int be_export (int ,char*,int ) ;
 int fprintf (int ,char*) ;
 scalar_t__ isatty (int ) ;
 int stderr ;
 int usage (int) ;

__attribute__((used)) static int
bectl_cmd_export(int argc, char *argv[])
{
 char *bootenv;

 if (argc == 1) {
  fprintf(stderr, "bectl export: missing boot environment name\n");
  return (usage(0));
 }

 if (argc > 2) {
  fprintf(stderr, "bectl export: extra arguments provided\n");
  return (usage(0));
 }

 bootenv = argv[1];

 if (isatty(STDOUT_FILENO)) {
  fprintf(stderr, "bectl export: must redirect output\n");
  return (EX_USAGE);
 }

 be_export(be, bootenv, STDOUT_FILENO);

 return (0);
}
