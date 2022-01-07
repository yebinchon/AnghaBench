
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibv_cq_1_0 {void* cq_context; } ;
struct ibv_cq {int dummy; } ;
struct ibv_comp_channel {int dummy; } ;


 int ibv_get_cq_event (struct ibv_comp_channel*,struct ibv_cq**,void**) ;

int __ibv_get_cq_event_1_0(struct ibv_comp_channel *channel,
      struct ibv_cq_1_0 **cq, void **cq_context)
{
 struct ibv_cq *real_cq;
 void *cq_ptr;
 int ret;

 ret = ibv_get_cq_event(channel, &real_cq, &cq_ptr);
 if (ret)
  return ret;

 *cq = cq_ptr;
 *cq_context = (*cq)->cq_context;

 return 0;
}
