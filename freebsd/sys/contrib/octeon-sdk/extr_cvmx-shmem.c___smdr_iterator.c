
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cvmx_shmem_dscptr {int dummy; } ;
struct TYPE_2__ {struct cvmx_shmem_dscptr* shmd; } ;


 int CVMX_SHMEM_NUM_DSCPTR ;
 int __CHECK_APP_SMDR ;
 TYPE_1__* __smdr ;
 struct cvmx_shmem_dscptr* stub1 (struct cvmx_shmem_dscptr*,void*) ;

__attribute__((used)) static struct cvmx_shmem_dscptr *__smdr_iterator(struct cvmx_shmem_dscptr *(*f)(struct cvmx_shmem_dscptr *dscptr, void *p), void *param )
{
    struct cvmx_shmem_dscptr *d, *dscptr = ((void*)0);
    int i;

    __CHECK_APP_SMDR;

    for (i = 0; i < CVMX_SHMEM_NUM_DSCPTR; i++)
    {
        d = &__smdr->shmd[i];
        if ((dscptr = (*f)(d, param)) != ((void*)0))
            break;
    }

   return dscptr;
}
