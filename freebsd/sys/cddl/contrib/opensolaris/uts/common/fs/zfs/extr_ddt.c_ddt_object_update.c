
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef enum ddt_type { ____Placeholder_ddt_type } ddt_type ;
typedef enum ddt_class { ____Placeholder_ddt_class } ddt_class ;
typedef int dmu_tx_t ;
struct TYPE_5__ {int ** ddt_object; int ddt_os; } ;
typedef TYPE_1__ ddt_t ;
typedef int ddt_entry_t ;
struct TYPE_6__ {int (* ddt_op_update ) (int ,int ,int *,int *) ;} ;


 int ASSERT (int ) ;
 int ddt_object_exists (TYPE_1__*,int,int) ;
 TYPE_2__** ddt_ops ;
 int stub1 (int ,int ,int *,int *) ;

int
ddt_object_update(ddt_t *ddt, enum ddt_type type, enum ddt_class class,
    ddt_entry_t *dde, dmu_tx_t *tx)
{
 ASSERT(ddt_object_exists(ddt, type, class));

 return (ddt_ops[type]->ddt_op_update(ddt->ddt_os,
     ddt->ddt_object[type][class], dde, tx));
}
