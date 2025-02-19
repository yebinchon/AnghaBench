
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int getopt (int,char**,char*) ;
 void* optarg ;
 void* port ;
 int printf (char*,...) ;
 int run () ;
 void* server ;

int main(int argc, char **argv)
{
 int op, ret;

 while ((op = getopt(argc, argv, "s:p:")) != -1) {
  switch (op) {
  case 's':
   server = optarg;
   break;
  case 'p':
   port = optarg;
   break;
  default:
   printf("usage: %s\n", argv[0]);
   printf("\t[-s server_address]\n");
   printf("\t[-p port_number]\n");
   exit(1);
  }
 }

 printf("rdma_client: start\n");
 ret = run();
 printf("rdma_client: end %d\n", ret);
 return ret;
}
