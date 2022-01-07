
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_info {int dummy; } ;


 int API_DEV_READ ;
 int API_ENODEV ;
 int API_ESYSC ;
 int dev_net_valid (int) ;
 struct device_info* devices ;
 int syscall (int ,int*,struct device_info*,void*,int*,int*) ;

int
ub_dev_recv(int handle, void *buf, int len, int *rlen)
{
 struct device_info *di;
 int err = 0, act_len;

 if (!dev_net_valid(handle))
  return (API_ENODEV);

 di = &devices[handle];
 if (!syscall(API_DEV_READ, &err, di, buf, &len, &act_len))
  return (API_ESYSC);

 if (!err)
  *rlen = act_len;

 return (err);
}
