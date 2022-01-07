
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ rsa_meth; } ;
typedef TYPE_1__ ENGINE ;


 int dummy_nid ;
 int engine_table_register (int *,int ,TYPE_1__*,int *,int,int ) ;
 int engine_unregister_all_RSA ;
 int rsa_table ;

int ENGINE_register_RSA(ENGINE *e)
{
    if (e->rsa_meth)
        return engine_table_register(&rsa_table,
                                     engine_unregister_all_RSA, e, &dummy_nid,
                                     1, 0);
    return 1;
}
