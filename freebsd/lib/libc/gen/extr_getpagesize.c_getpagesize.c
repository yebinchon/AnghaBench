
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int value ;


 int AT_PAGESZ ;
 int CTL_HW ;
 int HW_PAGESIZE ;
 int PAGE_SIZE ;
 int _elf_aux_info (int ,int*,int) ;
 int nitems (int*) ;
 int sysctl (int*,int ,int*,size_t*,int *,int ) ;

int
getpagesize(void)
{
 int mib[2];
 static int value;
 size_t size;
 int error;

 if (value != 0)
  return (value);

 error = _elf_aux_info(AT_PAGESZ, &value, sizeof(value));
 if (error == 0 && value != 0)
  return (value);

 mib[0] = CTL_HW;
 mib[1] = HW_PAGESIZE;
 size = sizeof value;
 if (sysctl(mib, nitems(mib), &value, &size, ((void*)0), 0) == -1)
  return (PAGE_SIZE);

 return (value);
}
