
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int ai_flags; void* ai_qp_type; int ai_port_space; } ;
struct TYPE_4__ {int max_send_wr; int max_recv_wr; int max_send_sge; int max_recv_sge; } ;
struct TYPE_5__ {void* qp_type; TYPE_1__ cap; } ;


 void* IBV_QPT_RC ;
 int RAI_PASSIVE ;
 int RDMA_PS_TCP ;
 int alloc_nodes () ;
 void* atoi (void*) ;
 int channel ;
 int cleanup_nodes () ;
 void* connections ;
 void* dst_addr ;
 int exit (int) ;
 int free (int ) ;
 int getopt (int,char**,char*) ;
 TYPE_3__ hints ;
 TYPE_2__ init_qp_attr ;
 int nodes ;
 void* optarg ;
 void* port ;
 int printf (char*,...) ;
 scalar_t__ rai ;
 int rdma_create_event_channel () ;
 int rdma_destroy_event_channel (int ) ;
 int rdma_freeaddrinfo (scalar_t__) ;
 void* retries ;
 int run_client () ;
 int run_server () ;
 int show_perf () ;
 void* src_addr ;
 void* timeout ;

int main(int argc, char **argv)
{
 int op, ret;

 hints.ai_port_space = RDMA_PS_TCP;
 hints.ai_qp_type = IBV_QPT_RC;
 while ((op = getopt(argc, argv, "s:b:c:p:r:t:")) != -1) {
  switch (op) {
  case 's':
   dst_addr = optarg;
   break;
  case 'b':
   src_addr = optarg;
   break;
  case 'c':
   connections = atoi(optarg);
   break;
  case 'p':
   port = optarg;
   break;
  case 'r':
   retries = atoi(optarg);
   break;
  case 't':
   timeout = atoi(optarg);
   break;
  default:
   printf("usage: %s\n", argv[0]);
   printf("\t[-s server_address]\n");
   printf("\t[-b bind_address]\n");
   printf("\t[-c connections]\n");
   printf("\t[-p port_number]\n");
   printf("\t[-r retries]\n");
   printf("\t[-t timeout_ms]\n");
   exit(1);
  }
 }

 init_qp_attr.cap.max_send_wr = 1;
 init_qp_attr.cap.max_recv_wr = 1;
 init_qp_attr.cap.max_send_sge = 1;
 init_qp_attr.cap.max_recv_sge = 1;
 init_qp_attr.qp_type = IBV_QPT_RC;

 channel = rdma_create_event_channel();
 if (!channel) {
  printf("failed to create event channel\n");
  exit(1);
 }

 if (dst_addr) {
  alloc_nodes();
  ret = run_client();
 } else {
  hints.ai_flags |= RAI_PASSIVE;
  ret = run_server();
 }

 cleanup_nodes();
 rdma_destroy_event_channel(channel);
 if (rai)
  rdma_freeaddrinfo(rai);

 show_perf();
 free(nodes);
 return ret;
}
