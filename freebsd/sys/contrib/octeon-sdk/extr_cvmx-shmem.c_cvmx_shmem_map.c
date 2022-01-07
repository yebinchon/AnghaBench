
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cvmx_shmem_dscptr {int dummy; } ;


 void* __cvmx_shmem_map_linux (struct cvmx_shmem_dscptr*,int) ;
 void* __cvmx_shmem_map_standalone (struct cvmx_shmem_dscptr*,int) ;

void *cvmx_shmem_map(struct cvmx_shmem_dscptr *dscptr, int pflag)
{
    void *vaddr = ((void*)0);



    vaddr = __cvmx_shmem_map_standalone(dscptr, pflag);

    return vaddr;
}
