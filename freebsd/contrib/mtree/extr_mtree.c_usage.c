
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* name; } ;


 unsigned int __arraycount (TYPE_1__*) ;
 int exit (int) ;
 TYPE_1__* flavors ;
 int fprintf (int ,char*,...) ;
 char* getprogname () ;
 int stderr ;

__attribute__((used)) static void
usage(void)
{
 unsigned int i;

 fprintf(stderr,
     "usage: %s [-bCcDdejLlMnPqrStUuWx] [-i|-m] [-E tags]\n"
     "\t\t[-f spec] [-f spec]\n"
     "\t\t[-I tags] [-K keywords] [-k keywords] [-N dbdir] [-p path]\n"
     "\t\t[-R keywords] [-s seed] [-X exclude-file]\n"
     "\t\t[-F flavor]\n",
     getprogname());
 fprintf(stderr, "\nflavors:");
 for (i = 0; i < __arraycount(flavors); i++)
  fprintf(stderr, " %s", flavors[i].name);
 fprintf(stderr, "\n");
 exit(1);
}
