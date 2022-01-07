
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_3__ {int os_dsl_dataset; } ;
typedef TYPE_1__ objset_t ;


 int dsl_dataset_space (int ,int *,int *,int *,int *) ;

void
dmu_objset_space(objset_t *os, uint64_t *refdbytesp, uint64_t *availbytesp,
    uint64_t *usedobjsp, uint64_t *availobjsp)
{
 dsl_dataset_space(os->os_dsl_dataset, refdbytesp, availbytesp,
     usedobjsp, availobjsp);
}
