
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EX_USAGE ;
 int STDIN_FILENO ;
 int be ;
 int be_import (int ,char*,int ) ;
 int fprintf (int ,char*) ;
 scalar_t__ isatty (int ) ;
 int stderr ;
 int usage (int) ;

__attribute__((used)) static int
bectl_cmd_import(int argc, char *argv[])
{
 char *bootenv;
 int err;

 if (argc == 1) {
  fprintf(stderr, "bectl import: missing boot environment name\n");
  return (usage(0));
 }

 if (argc > 2) {
  fprintf(stderr, "bectl import: extra arguments provided\n");
  return (usage(0));
 }

 bootenv = argv[1];

 if (isatty(STDIN_FILENO)) {
  fprintf(stderr, "bectl import: input can not be from terminal\n");
  return (EX_USAGE);
 }

 err = be_import(be, bootenv, STDIN_FILENO);

 return (err);
}
