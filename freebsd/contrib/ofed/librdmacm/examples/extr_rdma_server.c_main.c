
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int getopt (int,char**,char*) ;
 int optarg ;
 int port ;
 int printf (char*,...) ;
 int run () ;

int main(int argc, char **argv)
{
 int op, ret;

 while ((op = getopt(argc, argv, "p:")) != -1) {
  switch (op) {
  case 'p':
   port = optarg;
   break;
  default:
   printf("usage: %s\n", argv[0]);
   printf("\t[-p port_number]\n");
   exit(1);
  }
 }

 printf("rdma_server: start\n");
 ret = run();
 printf("rdma_server: end %d\n", ret);
 return ret;
}
