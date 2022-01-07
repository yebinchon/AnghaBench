
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * ec_meth; } ;
typedef TYPE_1__ ENGINE ;


 int dh_table ;
 int dummy_nid ;
 int engine_table_register (int *,int ,TYPE_1__*,int *,int,int) ;
 int engine_unregister_all_EC ;

int ENGINE_set_default_EC(ENGINE *e)
{
    if (e->ec_meth != ((void*)0))
        return engine_table_register(&dh_table,
                                     engine_unregister_all_EC, e, &dummy_nid,
                                     1, 1);
    return 1;
}
