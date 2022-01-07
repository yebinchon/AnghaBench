
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int max_send_wr; int max_recv_wr; int max_send_sge; int max_recv_sge; int max_inline_data; } ;
struct rdma_addrinfo {int sq_sig_all; TYPE_1__ cap; int qp_context; int ai_port_space; } ;
struct ibv_wc {int dummy; } ;
struct ibv_qp_init_attr {int sq_sig_all; TYPE_1__ cap; int qp_context; int ai_port_space; } ;


 int IBV_SEND_INLINE ;
 int RDMA_PS_TCP ;
 char* gai_strerror (int) ;
 int id ;
 int memset (struct rdma_addrinfo*,int ,int) ;
 int mr ;
 int perror (char*) ;
 int port ;
 int printf (char*,...) ;
 int rdma_connect (int ,int *) ;
 int rdma_create_ep (int *,struct rdma_addrinfo*,int *,struct rdma_addrinfo*) ;
 int rdma_dereg_mr (int ) ;
 int rdma_destroy_ep (int ) ;
 int rdma_disconnect (int ) ;
 int rdma_freeaddrinfo (struct rdma_addrinfo*) ;
 int rdma_get_recv_comp (int ,struct ibv_wc*) ;
 int rdma_get_send_comp (int ,struct ibv_wc*) ;
 int rdma_getaddrinfo (int ,int ,struct rdma_addrinfo*,struct rdma_addrinfo**) ;
 int rdma_post_recv (int ,int *,int ,int,int ) ;
 int rdma_post_send (int ,int *,int ,int,int ,int) ;
 int rdma_reg_msgs (int ,int ,int) ;
 int recv_msg ;
 int send_flags ;
 int send_mr ;
 int send_msg ;
 int server ;

__attribute__((used)) static int run(void)
{
 struct rdma_addrinfo hints, *res;
 struct ibv_qp_init_attr attr;
 struct ibv_wc wc;
 int ret;

 memset(&hints, 0, sizeof hints);
 hints.ai_port_space = RDMA_PS_TCP;
 ret = rdma_getaddrinfo(server, port, &hints, &res);
 if (ret) {
  printf("rdma_getaddrinfo: %s\n", gai_strerror(ret));
  goto out;
 }

 memset(&attr, 0, sizeof attr);
 attr.cap.max_send_wr = attr.cap.max_recv_wr = 1;
 attr.cap.max_send_sge = attr.cap.max_recv_sge = 1;
 attr.cap.max_inline_data = 16;
 attr.qp_context = id;
 attr.sq_sig_all = 1;
 ret = rdma_create_ep(&id, res, ((void*)0), &attr);

 if (attr.cap.max_inline_data >= 16)
  send_flags = IBV_SEND_INLINE;
 else
  printf("rdma_client: device doesn't support IBV_SEND_INLINE, "
         "using sge sends\n");

 if (ret) {
  perror("rdma_create_ep");
  goto out_free_addrinfo;
 }

 mr = rdma_reg_msgs(id, recv_msg, 16);
 if (!mr) {
  perror("rdma_reg_msgs for recv_msg");
  ret = -1;
  goto out_destroy_ep;
 }
 if ((send_flags & IBV_SEND_INLINE) == 0) {
  send_mr = rdma_reg_msgs(id, send_msg, 16);
  if (!send_mr) {
   perror("rdma_reg_msgs for send_msg");
   ret = -1;
   goto out_dereg_recv;
  }
 }

 ret = rdma_post_recv(id, ((void*)0), recv_msg, 16, mr);
 if (ret) {
  perror("rdma_post_recv");
  goto out_dereg_send;
 }

 ret = rdma_connect(id, ((void*)0));
 if (ret) {
  perror("rdma_connect");
  goto out_dereg_send;
 }

 ret = rdma_post_send(id, ((void*)0), send_msg, 16, send_mr, send_flags);
 if (ret) {
  perror("rdma_post_send");
  goto out_disconnect;
 }

 while ((ret = rdma_get_send_comp(id, &wc)) == 0);
 if (ret < 0) {
  perror("rdma_get_send_comp");
  goto out_disconnect;
 }

 while ((ret = rdma_get_recv_comp(id, &wc)) == 0);
 if (ret < 0)
  perror("rdma_get_recv_comp");
 else
  ret = 0;

out_disconnect:
 rdma_disconnect(id);
out_dereg_send:
 if ((send_flags & IBV_SEND_INLINE) == 0)
  rdma_dereg_mr(send_mr);
out_dereg_recv:
 rdma_dereg_mr(mr);
out_destroy_ep:
 rdma_destroy_ep(id);
out_free_addrinfo:
 rdma_freeaddrinfo(res);
out:
 return ret;
}
