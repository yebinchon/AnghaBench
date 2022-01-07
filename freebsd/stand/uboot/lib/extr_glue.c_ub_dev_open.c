
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_info {int dummy; } ;


 int API_DEV_OPEN ;
 int API_EINVAL ;
 int UB_MAX_DEV ;
 struct device_info* devices ;
 int syscall (int ,int*,struct device_info*) ;

int
ub_dev_open(int handle)
{
 struct device_info *di;
 int err = 0;

 if (handle < 0 || handle >= UB_MAX_DEV)
  return (API_EINVAL);

 di = &devices[handle];
 if (!syscall(API_DEV_OPEN, &err, di))
  return (-1);

 return (err);
}
