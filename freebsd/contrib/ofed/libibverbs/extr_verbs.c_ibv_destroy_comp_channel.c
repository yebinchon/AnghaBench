
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibv_context {int mutex; } ;
struct ibv_comp_channel {int fd; scalar_t__ refcnt; struct ibv_context* context; } ;


 int EBUSY ;
 int abi_ver ;
 int close (int ) ;
 int free (struct ibv_comp_channel*) ;
 int ibv_destroy_comp_channel_v2 (struct ibv_comp_channel*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

int ibv_destroy_comp_channel(struct ibv_comp_channel *channel)
{
 struct ibv_context *context;
 int ret;

 context = channel->context;
 pthread_mutex_lock(&context->mutex);

 if (channel->refcnt) {
  ret = EBUSY;
  goto out;
 }

 if (abi_ver <= 2) {
  ret = ibv_destroy_comp_channel_v2(channel);
  goto out;
 }

 close(channel->fd);
 free(channel);
 ret = 0;

out:
 pthread_mutex_unlock(&context->mutex);

 return ret;
}
