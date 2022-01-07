
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rdma_cm_event {int event; int status; } ;
struct TYPE_2__ {int channel; } ;




 int perror (char*) ;
 int printf (char*,char*,int) ;
 int rdma_ack_cm_event (struct rdma_cm_event*) ;
 char* rdma_event_str (int) ;
 int rdma_get_cm_event (int ,struct rdma_cm_event**) ;
 TYPE_1__ test ;

__attribute__((used)) static void *cma_thread(void *arg)
{
 struct rdma_cm_event *event;
 int ret;

 while (1) {
  ret = rdma_get_cm_event(test.channel, &event);
  if (ret) {
   perror("rdma_get_cm_event");
   break;
  }

  switch (event->event) {
  case 128:
  case 129:
   printf("mckey: event: %s, status: %d\n",
          rdma_event_str(event->event), event->status);
   break;
  default:
   break;
  }

  rdma_ack_cm_event(event);
 }
 return ((void*)0);
}
