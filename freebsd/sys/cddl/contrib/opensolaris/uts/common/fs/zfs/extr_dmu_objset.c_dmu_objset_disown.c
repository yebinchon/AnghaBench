
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int os_dsl_dataset; } ;
typedef TYPE_1__ objset_t ;


 int dsl_dataset_disown (int ,void*) ;

void
dmu_objset_disown(objset_t *os, void *tag)
{
 dsl_dataset_disown(os->os_dsl_dataset, tag);
}
