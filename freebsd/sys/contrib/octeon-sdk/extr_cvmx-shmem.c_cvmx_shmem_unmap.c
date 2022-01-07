
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cvmx_shmem_dscptr {int dummy; } ;


 int __cvmx_shmem_unmap_linux (struct cvmx_shmem_dscptr*) ;
 int __cvmx_shmem_unmap_standalone (struct cvmx_shmem_dscptr*) ;

void cvmx_shmem_unmap(struct cvmx_shmem_dscptr *dscptr)
{



    __cvmx_shmem_unmap_standalone(dscptr);

}
