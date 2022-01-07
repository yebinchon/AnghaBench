
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ucma_abi_ud_param {int qkey; int qp_num; int ah_attr; scalar_t__ private_data_len; int private_data; } ;
struct rdma_ud_param {int qkey; int qp_num; int ah_attr; int * private_data; scalar_t__ private_data_len; } ;
struct TYPE_4__ {struct rdma_ud_param ud; } ;
struct TYPE_3__ {TYPE_2__ param; } ;
struct cma_event {int private_data; TYPE_1__ event; } ;


 int ibv_copy_ah_attr_from_kern (int *,int *) ;
 int memcpy (int *,int ,scalar_t__) ;

__attribute__((used)) static void ucma_copy_ud_event(struct cma_event *event,
          struct ucma_abi_ud_param *src)
{
 struct rdma_ud_param *dst = &event->event.param.ud;

 dst->private_data_len = src->private_data_len;
 if (src->private_data_len) {
  dst->private_data = &event->private_data;
  memcpy(&event->private_data, src->private_data,
         src->private_data_len);
 }

 ibv_copy_ah_attr_from_kern(&dst->ah_attr, &src->ah_attr);
 dst->qp_num = src->qp_num;
 dst->qkey = src->qkey;
}
