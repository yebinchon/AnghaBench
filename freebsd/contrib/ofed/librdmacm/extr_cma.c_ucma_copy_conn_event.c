
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ucma_abi_conn_param {int qp_num; int srq; int rnr_retry_count; int retry_count; int flow_control; int initiator_depth; int responder_resources; scalar_t__ private_data_len; int private_data; } ;
struct rdma_conn_param {int qp_num; int srq; int rnr_retry_count; int retry_count; int flow_control; int initiator_depth; int responder_resources; int * private_data; scalar_t__ private_data_len; } ;
struct TYPE_3__ {struct rdma_conn_param conn; } ;
struct TYPE_4__ {TYPE_1__ param; } ;
struct cma_event {int private_data; TYPE_2__ event; } ;


 int memcpy (int *,int ,scalar_t__) ;

__attribute__((used)) static void ucma_copy_conn_event(struct cma_event *event,
     struct ucma_abi_conn_param *src)
{
 struct rdma_conn_param *dst = &event->event.param.conn;

 dst->private_data_len = src->private_data_len;
 if (src->private_data_len) {
  dst->private_data = &event->private_data;
  memcpy(&event->private_data, src->private_data,
         src->private_data_len);
 }

 dst->responder_resources = src->responder_resources;
 dst->initiator_depth = src->initiator_depth;
 dst->flow_control = src->flow_control;
 dst->retry_count = src->retry_count;
 dst->rnr_retry_count = src->rnr_retry_count;
 dst->srq = src->srq;
 dst->qp_num = src->qp_num;
}
