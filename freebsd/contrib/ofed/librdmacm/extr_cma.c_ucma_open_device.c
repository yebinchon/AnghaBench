
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibv_device {int dummy; } ;
struct ibv_context {int dummy; } ;
typedef scalar_t__ __be64 ;


 int ibv_free_device_list (struct ibv_device**) ;
 scalar_t__ ibv_get_device_guid (struct ibv_device*) ;
 struct ibv_device** ibv_get_device_list (int *) ;
 struct ibv_context* ibv_open_device (struct ibv_device*) ;

__attribute__((used)) static struct ibv_context *ucma_open_device(__be64 guid)
{
 struct ibv_device **dev_list;
 struct ibv_context *verbs = ((void*)0);
 int i;

 dev_list = ibv_get_device_list(((void*)0));
 if (!dev_list) {
  return ((void*)0);
 }

 for (i = 0; dev_list[i]; i++) {
  if (ibv_get_device_guid(dev_list[i]) == guid) {
   verbs = ibv_open_device(dev_list[i]);
   break;
  }
 }

 ibv_free_device_list(dev_list);
 return verbs;
}
