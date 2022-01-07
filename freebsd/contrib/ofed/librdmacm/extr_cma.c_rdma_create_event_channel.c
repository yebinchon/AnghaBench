
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rdma_event_channel {scalar_t__ fd; } ;


 int O_CLOEXEC ;
 int O_RDWR ;
 int free (struct rdma_event_channel*) ;
 struct rdma_event_channel* malloc (int) ;
 scalar_t__ open (char*,int) ;
 scalar_t__ ucma_init () ;

struct rdma_event_channel *rdma_create_event_channel(void)
{
 struct rdma_event_channel *channel;

 if (ucma_init())
  return ((void*)0);

 channel = malloc(sizeof(*channel));
 if (!channel)
  return ((void*)0);

 channel->fd = open("/dev/rdma_cm", O_RDWR | O_CLOEXEC);
 if (channel->fd < 0) {
  goto err;
 }
 return channel;
err:
 free(channel);
 return ((void*)0);
}
