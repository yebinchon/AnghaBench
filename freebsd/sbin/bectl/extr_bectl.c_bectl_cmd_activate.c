
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int be ;
 int be_activate (int ,char*,int) ;
 int fprintf (int ,char*,...) ;
 int getopt (int,char**,char*) ;
 scalar_t__ optind ;
 int optopt ;
 int printf (char*,...) ;
 int stderr ;
 int usage (int) ;

__attribute__((used)) static int
bectl_cmd_activate(int argc, char *argv[])
{
 int err, opt;
 bool temp;

 temp = 0;
 while ((opt = getopt(argc, argv, "t")) != -1) {
  switch (opt) {
  case 't':
   temp = 1;
   break;
  default:
   fprintf(stderr, "bectl activate: unknown option '-%c'\n",
       optopt);
   return (usage(0));
  }
 }

 argc -= optind;
 argv += optind;

 if (argc != 1) {
  fprintf(stderr, "bectl activate: wrong number of arguments\n");
  return (usage(0));
 }



 if ((err = be_activate(be, argv[0], temp)) != 0)

  printf("did not successfully activate boot environment %s\n",
      argv[0]);
 else
  printf("successfully activated boot environment %s\n", argv[0]);

 if (temp)
  printf("for next boot\n");

 return (err);
}
