
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rdma_cm_event {int id; } ;


 int channel ;
 int cma_handler (int ,struct rdma_cm_event*) ;
 int errno ;
 int perror (char*) ;
 int rdma_get_cm_event (int ,struct rdma_cm_event**) ;

__attribute__((used)) static void *process_events(void *arg)
{
 struct rdma_cm_event *event;
 int ret = 0;

 while (!ret) {
  ret = rdma_get_cm_event(channel, &event);
  if (!ret) {
   cma_handler(event->id, event);
  } else {
   perror("failure in rdma_get_cm_event in process_server_events");
   ret = errno;
  }
 }
 return ((void*)0);
}
