
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef union socket_addr {int dummy; } socket_addr ;
struct ibv_port_attr {int lid; } ;
struct ibv_ah_attr {int port_num; int dlid; } ;
struct TYPE_7__ {int addr; int ah; int qpn; struct ds_qp* qp; } ;
struct ds_qp {TYPE_4__* rs; TYPE_3__ dest; TYPE_2__* cm_id; } ;
typedef int socklen_t ;
struct TYPE_8__ {int dest_map; } ;
struct TYPE_6__ {int pd; int port_num; int verbs; TYPE_1__* qp; } ;
struct TYPE_5__ {int qp_num; } ;


 int ENOMEM ;
 int ERR (int ) ;
 int ds_compare_addr ;
 int ibv_create_ah (int ,struct ibv_ah_attr*) ;
 int ibv_query_port (int ,int ,struct ibv_port_attr*) ;
 int memcpy (int *,union socket_addr*,int ) ;
 int memset (struct ibv_ah_attr*,int ,int) ;
 int tsearch (int *,int *,int ) ;

__attribute__((used)) static int ds_add_qp_dest(struct ds_qp *qp, union socket_addr *addr,
     socklen_t addrlen)
{
 struct ibv_port_attr port_attr;
 struct ibv_ah_attr attr;
 int ret;

 memcpy(&qp->dest.addr, addr, addrlen);
 qp->dest.qp = qp;
 qp->dest.qpn = qp->cm_id->qp->qp_num;

 ret = ibv_query_port(qp->cm_id->verbs, qp->cm_id->port_num, &port_attr);
 if (ret)
  return ret;

 memset(&attr, 0, sizeof attr);
 attr.dlid = port_attr.lid;
 attr.port_num = qp->cm_id->port_num;
 qp->dest.ah = ibv_create_ah(qp->cm_id->pd, &attr);
 if (!qp->dest.ah)
  return ERR(ENOMEM);

 tsearch(&qp->dest.addr, &qp->rs->dest_map, ds_compare_addr);
 return 0;
}
