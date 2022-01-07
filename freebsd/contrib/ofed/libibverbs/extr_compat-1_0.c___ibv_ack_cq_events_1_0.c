
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibv_cq_1_0 {int real_cq; } ;


 int ibv_ack_cq_events (int ,unsigned int) ;

void __ibv_ack_cq_events_1_0(struct ibv_cq_1_0 *cq, unsigned int nevents)
{
 ibv_ack_cq_events(cq->real_cq, nevents);
}
