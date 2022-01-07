
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibv_device {int dummy; } ;


 struct ibv_device** realloc (struct ibv_device**,int) ;

__attribute__((used)) static void add_device(struct ibv_device *dev,
         struct ibv_device ***dev_list,
         int *num_devices,
         int *list_size)
{
 struct ibv_device **new_list;

 if (*list_size <= *num_devices) {
  *list_size = *list_size ? *list_size * 2 : 1;
  new_list = realloc(*dev_list, *list_size * sizeof (struct ibv_device *));
  if (!new_list)
   return;
  *dev_list = new_list;
 }

 (*dev_list)[(*num_devices)++] = dev;
}
