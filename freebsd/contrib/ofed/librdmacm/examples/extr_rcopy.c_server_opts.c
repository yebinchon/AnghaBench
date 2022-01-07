
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int getopt (int,char**,char*) ;
 int optarg ;
 int port ;
 int show_usage (char*) ;

__attribute__((used)) static void server_opts(int argc, char **argv)
{
 int op;

 while ((op = getopt(argc, argv, "p:")) != -1) {
  switch (op) {
  case 'p':
   port = optarg;
   break;
  default:
   show_usage(argv[0]);
  }
 }
}
