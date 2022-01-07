
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cmatest_node {int cma_id; } ;
struct TYPE_2__ {int dst_addr; } ;


 int connect_error () ;
 int init_node (struct cmatest_node*) ;
 int is_sender ;
 int perror (char*) ;
 int post_recvs (struct cmatest_node*) ;
 int rdma_join_multicast (int ,int ,struct cmatest_node*) ;
 TYPE_1__ test ;
 int verify_test_params (struct cmatest_node*) ;

__attribute__((used)) static int addr_handler(struct cmatest_node *node)
{
 int ret;

 ret = verify_test_params(node);
 if (ret)
  goto err;

 ret = init_node(node);
 if (ret)
  goto err;

 if (!is_sender) {
  ret = post_recvs(node);
  if (ret)
   goto err;
 }

 ret = rdma_join_multicast(node->cma_id, test.dst_addr, node);
 if (ret) {
  perror("mckey: failure joining");
  goto err;
 }
 return 0;
err:
 connect_error();
 return ret;
}
