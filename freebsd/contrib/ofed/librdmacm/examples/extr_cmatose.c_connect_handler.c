
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rdma_cm_id {struct cmatest_node* context; } ;
struct cmatest_node {struct rdma_cm_id* cma_id; } ;
struct TYPE_2__ {scalar_t__ conn_index; struct cmatest_node* nodes; } ;


 int ENOMEM ;
 int connect_error () ;
 scalar_t__ connections ;
 int init_node (struct cmatest_node*) ;
 int perror (char*) ;
 int post_recvs (struct cmatest_node*) ;
 int printf (char*) ;
 int rdma_accept (struct rdma_cm_id*,int *) ;
 int rdma_reject (struct rdma_cm_id*,int *,int ) ;
 TYPE_1__ test ;

__attribute__((used)) static int connect_handler(struct rdma_cm_id *cma_id)
{
 struct cmatest_node *node;
 int ret;

 if (test.conn_index == connections) {
  ret = -ENOMEM;
  goto err1;
 }
 node = &test.nodes[test.conn_index++];

 node->cma_id = cma_id;
 cma_id->context = node;

 ret = init_node(node);
 if (ret)
  goto err2;

 ret = post_recvs(node);
 if (ret)
  goto err2;

 ret = rdma_accept(node->cma_id, ((void*)0));
 if (ret) {
  perror("cmatose: failure accepting");
  goto err2;
 }
 return 0;

err2:
 node->cma_id = ((void*)0);
 connect_error();
err1:
 printf("cmatose: failing connection request\n");
 rdma_reject(cma_id, ((void*)0), 0);
 return ret;
}
