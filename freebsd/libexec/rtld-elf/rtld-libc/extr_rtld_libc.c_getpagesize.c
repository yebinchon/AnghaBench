
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int value ;


 int CTL_HW ;
 int HW_PAGESIZE ;
 int PAGE_SIZE ;
 int nitems (int*) ;
 scalar_t__ npagesizes ;
 int* pagesizes ;
 int sysctl (int*,int ,int*,size_t*,int *,int ) ;

int
getpagesize(void)
{
 int mib[2], value;
 size_t size;
 static int pagesize;

 if (pagesize != 0)
  return (pagesize);

 if (npagesizes > 0)
  pagesize = pagesizes[0];

 if (pagesize == 0) {
  mib[0] = CTL_HW;
  mib[1] = HW_PAGESIZE;
  size = sizeof(value);
  if (sysctl(mib, nitems(mib), &value, &size, ((void*)0), 0) == -1)
   pagesize = PAGE_SIZE;
  else
   pagesize = value;
 }

 return (pagesize);
}
