
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ah_attr; int qkey; int qp_num; } ;
struct TYPE_5__ {TYPE_1__ ud; } ;
struct rdma_cm_event {TYPE_2__ param; } ;
struct cmatest_node {int connected; int ah; int pd; int remote_qkey; int remote_qpn; } ;
struct TYPE_6__ {int connects_left; } ;


 int connect_error () ;
 int ibv_create_ah (int ,int *) ;
 int printf (char*) ;
 TYPE_3__ test ;

__attribute__((used)) static int resolved_handler(struct cmatest_node *node,
       struct rdma_cm_event *event)
{
 node->remote_qpn = event->param.ud.qp_num;
 node->remote_qkey = event->param.ud.qkey;
 node->ah = ibv_create_ah(node->pd, &event->param.ud.ah_attr);
 if (!node->ah) {
  printf("udaddy: failure creating address handle\n");
  goto err;
 }

 node->connected = 1;
 test.connects_left--;
 return 0;
err:
 connect_error();
 return -1;
}
