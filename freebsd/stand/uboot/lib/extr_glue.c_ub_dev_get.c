
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_info {int dummy; } ;


 int UB_MAX_DEV ;
 struct device_info* devices ;

struct device_info *
ub_dev_get(int i)
{

 return ((i < 0 || i >= UB_MAX_DEV) ? ((void*)0) : &devices[i]);
}
