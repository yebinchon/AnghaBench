
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_info {int dummy; } ;
typedef int lbastart_t ;
typedef int lbasize_t ;


 int API_DEV_READ ;
 int API_ENODEV ;
 int API_ESYSC ;
 int dev_stor_valid (int) ;
 struct device_info* devices ;
 int syscall (int ,int*,struct device_info*,void*,int *,int *,int *) ;

int
ub_dev_read(int handle, void *buf, lbasize_t len, lbastart_t start,
    lbasize_t *rlen)
{
 struct device_info *di;
 lbasize_t act_len;
 int err = 0;

 if (!dev_stor_valid(handle))
  return (API_ENODEV);

 di = &devices[handle];
 if (!syscall(API_DEV_READ, &err, di, buf, &len, &start, &act_len))
  return (API_ESYSC);

 if (!err && rlen)
  *rlen = act_len;

 return (err);
}
