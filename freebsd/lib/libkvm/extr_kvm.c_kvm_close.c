
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ pmfd; scalar_t__ vmfd; scalar_t__ nlfd; scalar_t__ procbase; scalar_t__ argbuf; scalar_t__ argspc; scalar_t__ argv; void* pt_map; void* page_map; scalar_t__ sparse_map; int pt_sparse_size; TYPE_1__* arch; int * vmst; } ;
typedef TYPE_2__ kvm_t ;
struct TYPE_5__ {int (* ka_freevtop ) (TYPE_2__*) ;} ;


 int EINVAL ;
 scalar_t__ MAP_FAILED ;
 int close (scalar_t__) ;
 int errno ;
 int free (void*) ;
 int munmap (scalar_t__,int ) ;
 int stub1 (TYPE_2__*) ;

int
kvm_close(kvm_t *kd)
{
 int error = 0;

 if (kd == ((void*)0)) {
  errno = EINVAL;
  return (-1);
 }
 if (kd->vmst != ((void*)0))
  kd->arch->ka_freevtop(kd);
 if (kd->pmfd >= 0)
  error |= close(kd->pmfd);
 if (kd->vmfd >= 0)
  error |= close(kd->vmfd);
 if (kd->nlfd >= 0)
  error |= close(kd->nlfd);
 if (kd->procbase != 0)
  free((void *)kd->procbase);
 if (kd->argbuf != 0)
  free((void *) kd->argbuf);
 if (kd->argspc != 0)
  free((void *) kd->argspc);
 if (kd->argv != 0)
  free((void *)kd->argv);
 if (kd->pt_map != ((void*)0))
  free(kd->pt_map);
 if (kd->page_map != ((void*)0))
  free(kd->page_map);
 if (kd->sparse_map != MAP_FAILED)
  munmap(kd->sparse_map, kd->pt_sparse_size);
 free((void *)kd);

 return (error);
}
