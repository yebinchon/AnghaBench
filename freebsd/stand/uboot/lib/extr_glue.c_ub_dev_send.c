
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_info {int dummy; } ;


 int API_DEV_WRITE ;
 int API_ENODEV ;
 int API_ESYSC ;
 int dev_net_valid (int) ;
 struct device_info* devices ;
 int syscall (int ,int*,struct device_info*,void*,int*) ;

int
ub_dev_send(int handle, void *buf, int len)
{
 struct device_info *di;
 int err = 0;

 if (!dev_net_valid(handle))
  return (API_ENODEV);

 di = &devices[handle];
 if (!syscall(API_DEV_WRITE, &err, di, buf, &len))
  return (API_ESYSC);

 return (err);
}
