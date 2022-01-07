
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rdma_conn_param {int qp_num; } ;
struct rdma_cm_id {TYPE_1__* qp; struct cmatest_node* context; } ;
struct cmatest_node {int connected; struct rdma_cm_id* cma_id; } ;
struct TYPE_4__ {scalar_t__ conn_index; int connects_left; struct cmatest_node* nodes; } ;
struct TYPE_3__ {int qp_num; } ;


 int ENOMEM ;
 int connect_error () ;
 scalar_t__ connections ;
 int init_node (struct cmatest_node*) ;
 int memset (struct rdma_conn_param*,int ,int) ;
 int perror (char*) ;
 int post_recvs (struct cmatest_node*) ;
 int printf (char*) ;
 int rdma_accept (struct rdma_cm_id*,struct rdma_conn_param*) ;
 int rdma_reject (struct rdma_cm_id*,int *,int ) ;
 TYPE_2__ test ;
 int verify_test_params (struct cmatest_node*) ;

__attribute__((used)) static int connect_handler(struct rdma_cm_id *cma_id)
{
 struct cmatest_node *node;
 struct rdma_conn_param conn_param;
 int ret;

 if (test.conn_index == connections) {
  ret = -ENOMEM;
  goto err1;
 }
 node = &test.nodes[test.conn_index++];

 node->cma_id = cma_id;
 cma_id->context = node;

 ret = verify_test_params(node);
 if (ret)
  goto err2;

 ret = init_node(node);
 if (ret)
  goto err2;

 ret = post_recvs(node);
 if (ret)
  goto err2;

 memset(&conn_param, 0, sizeof conn_param);
 conn_param.qp_num = node->cma_id->qp->qp_num;
 ret = rdma_accept(node->cma_id, &conn_param);
 if (ret) {
  perror("udaddy: failure accepting");
  goto err2;
 }
 node->connected = 1;
 test.connects_left--;
 return 0;

err2:
 node->cma_id = ((void*)0);
 connect_error();
err1:
 printf("udaddy: failing connection request\n");
 rdma_reject(cma_id, ((void*)0), 0);
 return ret;
}
