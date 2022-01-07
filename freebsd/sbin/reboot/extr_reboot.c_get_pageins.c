
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int pageins ;


 scalar_t__ sysctlbyname (char*,int *,size_t*,int *,int ) ;
 int warnx (char*) ;

__attribute__((used)) static u_int
get_pageins(void)
{
 u_int pageins;
 size_t len;

 len = sizeof(pageins);
 if (sysctlbyname("vm.stats.vm.v_swappgsin", &pageins, &len, ((void*)0), 0)
     != 0) {
  warnx("v_swappgsin");
  return (0);
 }
 return pageins;
}
