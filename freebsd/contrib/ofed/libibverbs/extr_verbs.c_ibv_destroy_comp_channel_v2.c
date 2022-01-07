
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibv_comp_channel {int dummy; } ;
struct ibv_abi_compat_v2 {int in_use; } ;


 int pthread_mutex_unlock (int *) ;

__attribute__((used)) static int ibv_destroy_comp_channel_v2(struct ibv_comp_channel *channel)
{
 struct ibv_abi_compat_v2 *t = (struct ibv_abi_compat_v2 *) channel;
 pthread_mutex_unlock(&t->in_use);
 return 0;
}
