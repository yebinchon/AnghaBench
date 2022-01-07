
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ibv_port_attr {int active_mtu; } ;
struct cmatest_node {TYPE_1__* cma_id; } ;
struct TYPE_2__ {int port_num; int verbs; } ;


 int EINVAL ;
 int ibv_query_port (int ,int ,struct ibv_port_attr*) ;
 scalar_t__ message_count ;
 int message_size ;
 int printf (char*,int,int) ;

__attribute__((used)) static int verify_test_params(struct cmatest_node *node)
{
 struct ibv_port_attr port_attr;
 int ret;

 ret = ibv_query_port(node->cma_id->verbs, node->cma_id->port_num,
        &port_attr);
 if (ret)
  return ret;

 if (message_count && message_size > (1 << (port_attr.active_mtu + 7))) {
  printf("udaddy: message_size %d is larger than active mtu %d\n",
         message_size, 1 << (port_attr.active_mtu + 7));
  return -EINVAL;
 }

 return 0;
}
