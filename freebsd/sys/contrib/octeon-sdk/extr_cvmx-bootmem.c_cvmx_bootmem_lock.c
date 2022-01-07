
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __cvmx_bootmem_lock (int ) ;

void cvmx_bootmem_lock(void)
{
    __cvmx_bootmem_lock(0);
}
