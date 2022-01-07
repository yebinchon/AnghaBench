
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cvmx_shmem_dscptr {int owner; } ;


 int CVMX_SHMEM_OWNER_NONE ;

__attribute__((used)) static void __cvmx_shmem_smdr_free(struct cvmx_shmem_dscptr *dscptr)
{
    dscptr->owner = CVMX_SHMEM_OWNER_NONE;
}
