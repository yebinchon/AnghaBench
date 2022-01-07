
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int raw; } ;
struct TYPE_6__ {TYPE_1__ dgid; } ;
struct TYPE_8__ {int dlid; int sl; TYPE_2__ grh; } ;
struct rdma_ud_param {TYPE_4__ ah_attr; int qkey; int qp_num; } ;
struct cmatest_node {int connected; int ah; int pd; int remote_qkey; int remote_qpn; } ;
struct TYPE_7__ {int connects_left; } ;


 int AF_INET6 ;
 int connect_error () ;
 int ibv_create_ah (int ,TYPE_4__*) ;
 int inet_ntop (int ,int ,char*,int) ;
 int printf (char*,...) ;
 TYPE_3__ test ;

__attribute__((used)) static int join_handler(struct cmatest_node *node,
   struct rdma_ud_param *param)
{
 char buf[40];

 inet_ntop(AF_INET6, param->ah_attr.grh.dgid.raw, buf, 40);
 printf("mckey: joined dgid: %s mlid 0x%x sl %d\n", buf,
  param->ah_attr.dlid, param->ah_attr.sl);

 node->remote_qpn = param->qp_num;
 node->remote_qkey = param->qkey;
 node->ah = ibv_create_ah(node->pd, &param->ah_attr);
 if (!node->ah) {
  printf("mckey: failure creating address handle\n");
  goto err;
 }

 node->connected = 1;
 test.connects_left--;
 return 0;
err:
 connect_error();
 return -1;
}
