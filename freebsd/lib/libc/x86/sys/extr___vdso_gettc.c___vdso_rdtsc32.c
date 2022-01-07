
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;


 int rdtsc32 () ;
 int rdtsc_mb () ;

__attribute__((used)) static u_int
__vdso_rdtsc32(void)
{

 rdtsc_mb();
 return (rdtsc32());
}
