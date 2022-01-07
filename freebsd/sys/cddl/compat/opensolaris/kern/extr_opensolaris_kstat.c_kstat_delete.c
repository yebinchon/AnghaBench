
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ks_sysctl_ctx; } ;
typedef TYPE_1__ kstat_t ;


 int M_KSTAT ;
 int free (TYPE_1__*,int ) ;
 int sysctl_ctx_free (int *) ;

void
kstat_delete(kstat_t *ksp)
{

 sysctl_ctx_free(&ksp->ks_sysctl_ctx);
 free(ksp, M_KSTAT);
}
