
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_info {int * cookie; } ;


 int API_DEV_ENUM ;
 int UB_MAX_DEV ;
 struct device_info* devices ;
 int memset (struct device_info**,int ,int) ;
 int syscall (int ,int *,struct device_info*) ;

int
ub_dev_enum(void)
{
 struct device_info *di;
 int n = 0;

 memset(&devices, 0, sizeof(struct device_info) * UB_MAX_DEV);
 di = &devices[0];

 if (!syscall(API_DEV_ENUM, ((void*)0), di))
  return (0);

 while (di->cookie != ((void*)0)) {

  if (++n >= UB_MAX_DEV)
   break;


  di++;


  di->cookie = devices[n - 1].cookie;

  if (!syscall(API_DEV_ENUM, ((void*)0), di))
   return (0);
 }

 return (n);
}
