
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rdma_event_channel {int dummy; } ;
struct rdma_cm_id {int dummy; } ;
typedef enum rdma_port_space { ____Placeholder_rdma_port_space } rdma_port_space ;
typedef enum ibv_qp_type { ____Placeholder_ibv_qp_type } ibv_qp_type ;


 int IBV_QPT_RC ;
 int IBV_QPT_UD ;
 int RDMA_PS_IPOIB ;
 int RDMA_PS_UDP ;
 int rdma_create_id2 (struct rdma_event_channel*,struct rdma_cm_id**,void*,int,int) ;

int rdma_create_id(struct rdma_event_channel *channel,
     struct rdma_cm_id **id, void *context,
     enum rdma_port_space ps)
{
 enum ibv_qp_type qp_type;

 qp_type = (ps == RDMA_PS_IPOIB || ps == RDMA_PS_UDP) ?
    IBV_QPT_UD : IBV_QPT_RC;
 return rdma_create_id2(channel, id, context, ps, qp_type);
}
