
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* spring ) () ;int arg; } ;


 unsigned int __arraycount (TYPE_1__*) ;
 int err (int,char*) ;
 int errx (int,char*) ;
 int exit (int) ;
 TYPE_1__* paragus ;
 int printf (char*,char*) ;
 int rumpclient_init () ;
 scalar_t__ strcmp (char*,int ) ;
 int stub1 () ;

int
main(int argc, char *argv[])
{
 unsigned i;

 if (argc != 2)
  errx(1, "invalid usage");

 if (rumpclient_init() == -1)
  err(1, "rumpclient init");

 for (i = 0; i < __arraycount(paragus); i++) {
  if (strcmp(argv[1], paragus[i].arg) == 0) {
   paragus[i].spring();
   break;
  }
 }
 if (i == __arraycount(paragus)) {
  printf("invalid test %s\n", argv[1]);
  exit(1);
 }

 exit(0);
}
