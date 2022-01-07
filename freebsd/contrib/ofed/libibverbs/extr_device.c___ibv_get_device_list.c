
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibv_device {int dummy; } ;


 int ENOMEM ;
 struct ibv_device** calloc (int,int) ;
 int count_devices ;
 struct ibv_device** device_list ;
 int device_list_once ;
 int errno ;
 int num_devices ;
 int pthread_once (int *,int ) ;

struct ibv_device **__ibv_get_device_list(int *num)
{
 struct ibv_device **l;
 int i;

 if (num)
  *num = 0;

 pthread_once(&device_list_once, count_devices);

 if (num_devices < 0) {
  errno = -num_devices;
  return ((void*)0);
 }

 l = calloc(num_devices + 1, sizeof (struct ibv_device *));
 if (!l) {
  errno = ENOMEM;
  return ((void*)0);
 }

 for (i = 0; i < num_devices; ++i)
  l[i] = device_list[i];
 if (num)
  *num = num_devices;

 return l;
}
