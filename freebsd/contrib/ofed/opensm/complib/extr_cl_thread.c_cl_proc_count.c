
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ret ;


 scalar_t__ sysctlbyname (char*,int*,size_t*,int *,int ) ;

int cl_proc_count(void)
{
 int ret;
 size_t size = sizeof(ret);

 if (sysctlbyname("hw.ncpu", &ret, &size, ((void*)0), 0) != 0 || ret < 1)
  ret = 1;
 return ret;
}
