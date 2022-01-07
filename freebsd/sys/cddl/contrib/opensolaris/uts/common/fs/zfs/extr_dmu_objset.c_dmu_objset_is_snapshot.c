
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* os_dsl_dataset; } ;
typedef TYPE_2__ objset_t ;
struct TYPE_4__ {int ds_is_snapshot; } ;


 int B_FALSE ;

int
dmu_objset_is_snapshot(objset_t *os)
{
 if (os->os_dsl_dataset != ((void*)0))
  return (os->os_dsl_dataset->ds_is_snapshot);
 else
  return (B_FALSE);
}
