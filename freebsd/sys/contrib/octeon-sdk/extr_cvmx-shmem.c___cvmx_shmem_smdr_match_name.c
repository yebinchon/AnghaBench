
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cvmx_shmem_dscptr {scalar_t__ owner; int name; } ;


 scalar_t__ CVMX_SHMEM_OWNER_NONE ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static struct cvmx_shmem_dscptr *__cvmx_shmem_smdr_match_name(struct cvmx_shmem_dscptr *dscptr, void *name)
{
    char *name_to_match = (char *) name;
    struct cvmx_shmem_dscptr *ret = ((void*)0);

    if (dscptr->owner == CVMX_SHMEM_OWNER_NONE)
        return ((void*)0);

    if (strcmp(dscptr->name, name_to_match) == 0)
        ret = dscptr;

    return ret;
}
