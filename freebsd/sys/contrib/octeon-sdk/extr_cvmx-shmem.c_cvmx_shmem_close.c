
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cvmx_shmem_dscptr {int dummy; } ;


 int __cvmx_shmem_close_linux (struct cvmx_shmem_dscptr*,int) ;
 int __cvmx_shmem_close_standalone (struct cvmx_shmem_dscptr*,int) ;

int cvmx_shmem_close(struct cvmx_shmem_dscptr *dscptr, int remove)
{
    int ret;



    ret = __cvmx_shmem_close_standalone(dscptr, remove);

    return ret;
}
