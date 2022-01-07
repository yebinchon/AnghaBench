
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cvmx_shmem_dscptr {scalar_t__ owner; } ;


 scalar_t__ CVMX_SHMEM_OWNER_NONE ;

__attribute__((used)) static struct cvmx_shmem_dscptr *__cvmx_shmem_smdr_is_free(struct cvmx_shmem_dscptr* dscptr, void *nouse)
{
    if (dscptr->owner == CVMX_SHMEM_OWNER_NONE)
        return dscptr;
    else
        return ((void*)0);
}
