
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int l_long ;


 int LINUX_UTIME_NOW ;
 int LINUX_UTIME_OMIT ;

__attribute__((used)) static int
linux_utimensat_nsec_valid(l_long nsec)
{

 if (nsec == LINUX_UTIME_OMIT || nsec == LINUX_UTIME_NOW)
  return (0);
 if (nsec >= 0 && nsec <= 999999999)
  return (0);
 return (1);
}
