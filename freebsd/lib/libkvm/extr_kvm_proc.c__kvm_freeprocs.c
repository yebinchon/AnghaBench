
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * procbase; } ;
typedef TYPE_1__ kvm_t ;


 int free (int *) ;

void
_kvm_freeprocs(kvm_t *kd)
{

 free(kd->procbase);
 kd->procbase = ((void*)0);
}
