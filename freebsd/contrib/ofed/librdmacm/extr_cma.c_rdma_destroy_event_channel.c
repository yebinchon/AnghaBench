
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rdma_event_channel {int fd; } ;


 int close (int ) ;
 int free (struct rdma_event_channel*) ;

void rdma_destroy_event_channel(struct rdma_event_channel *channel)
{
 close(channel->fd);
 free(channel);
}
