
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rdma_cm_event {int id; } ;
struct TYPE_2__ {int channel; scalar_t__ disconnects_left; } ;


 int cma_handler (int ,struct rdma_cm_event*) ;
 int errno ;
 int perror (char*) ;
 int rdma_ack_cm_event (struct rdma_cm_event*) ;
 int rdma_get_cm_event (int ,struct rdma_cm_event**) ;
 TYPE_1__ test ;

__attribute__((used)) static int disconnect_events(void)
{
 struct rdma_cm_event *event;
 int ret = 0;

 while (test.disconnects_left && !ret) {
  ret = rdma_get_cm_event(test.channel, &event);
  if (!ret) {
   ret = cma_handler(event->id, event);
   rdma_ack_cm_event(event);
  } else {
   perror("cmatose: failure in rdma_get_cm_event in disconnect events");
   ret = errno;
  }
 }

 return ret;
}
