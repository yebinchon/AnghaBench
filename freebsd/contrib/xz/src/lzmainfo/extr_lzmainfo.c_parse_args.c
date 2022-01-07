
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {char* member_0; int member_3; int * member_2; int const member_1; } ;


 int EXIT_FAILURE ;
 int exit (int ) ;
 int getopt_long (int,char**,char*,struct option const*,int *) ;
 int help () ;

 int version () ;

__attribute__((used)) static void
parse_args(int argc, char **argv)
{
 enum {
  OPT_HELP,
  OPT_VERSION,
 };

 static const struct option long_opts[] = {
  { "help", 128, ((void*)0), OPT_HELP },
  { "version", 128, ((void*)0), OPT_VERSION },
  { ((void*)0), 0, ((void*)0), 0 }
 };

 int c;
 while ((c = getopt_long(argc, argv, "", long_opts, ((void*)0))) != -1) {
  switch (c) {
  case OPT_HELP:
   help();

  case OPT_VERSION:
   version();

  default:
   exit(EXIT_FAILURE);
  }
 }

 return;
}
