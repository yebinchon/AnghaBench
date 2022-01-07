
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr {int dummy; } ;
struct TYPE_2__ {int channel; void* connects_left; int dst_in; struct sockaddr* dst_addr; int src_in; struct sockaddr* src_addr; } ;


 int RDMA_PS_IPOIB ;
 int RDMA_PS_UDP ;
 scalar_t__ alloc_nodes () ;
 void* atoi (void*) ;
 void* connections ;
 int destroy_nodes () ;
 void* dst_addr ;
 int exit (int) ;
 int getopt (int,char**,char*) ;
 int is_sender ;
 void* message_count ;
 void* message_size ;
 void* optarg ;
 int perror (char*) ;
 int port_space ;
 int printf (char*,...) ;
 int rdma_create_event_channel () ;
 int rdma_destroy_event_channel (int ) ;
 int run () ;
 void* src_addr ;
 int strtol (void*,int *,int ) ;
 TYPE_1__ test ;
 int unmapped_addr ;

int main(int argc, char **argv)
{
 int op, ret;


 while ((op = getopt(argc, argv, "m:M:sb:c:C:S:p:")) != -1) {
  switch (op) {
  case 'm':
   dst_addr = optarg;
   break;
  case 'M':
   unmapped_addr = 1;
   dst_addr = optarg;
   break;
  case 's':
   is_sender = 1;
   break;
  case 'b':
   src_addr = optarg;
   test.src_addr = (struct sockaddr *) &test.src_in;
   break;
  case 'c':
   connections = atoi(optarg);
   break;
  case 'C':
   message_count = atoi(optarg);
   break;
  case 'S':
   message_size = atoi(optarg);
   break;
  case 'p':
   port_space = strtol(optarg, ((void*)0), 0);
   break;
  default:
   printf("usage: %s\n", argv[0]);
   printf("\t-m multicast_address\n");
   printf("\t[-M unmapped_multicast_address]\n"
          "\t replaces -m and requires -b\n");
   printf("\t[-s(ender)]\n");
   printf("\t[-b bind_address]\n");
   printf("\t[-c connections]\n");
   printf("\t[-C message_count]\n");
   printf("\t[-S message_size]\n");
   printf("\t[-p port_space - %#x for UDP (default), "
          "%#x for IPOIB]\n", RDMA_PS_UDP, RDMA_PS_IPOIB);
   exit(1);
  }
 }

 if (unmapped_addr && !src_addr) {
  printf("unmapped multicast address requires binding "
   "to source address\n");
  exit(1);
 }

 test.dst_addr = (struct sockaddr *) &test.dst_in;
 test.connects_left = connections;

 test.channel = rdma_create_event_channel();
 if (!test.channel) {
  perror("failed to create event channel");
  exit(1);
 }

 if (alloc_nodes())
  exit(1);

 ret = run();

 printf("test complete\n");
 destroy_nodes();
 rdma_destroy_event_channel(test.channel);

 printf("return status %d\n", ret);
 return ret;
}
