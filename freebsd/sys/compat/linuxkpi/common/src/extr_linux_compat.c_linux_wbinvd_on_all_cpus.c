
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pmap_invalidate_cache () ;

int
linux_wbinvd_on_all_cpus(void)
{

 pmap_invalidate_cache();
 return (0);
}
