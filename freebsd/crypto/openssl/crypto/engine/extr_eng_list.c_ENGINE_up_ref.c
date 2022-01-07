
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int struct_ref; } ;
typedef TYPE_1__ ENGINE ;


 int CRYPTO_UP_REF (int *,int*,int ) ;
 int ENGINE_F_ENGINE_UP_REF ;
 int ENGINEerr (int ,int ) ;
 int ERR_R_PASSED_NULL_PARAMETER ;
 int global_engine_lock ;

int ENGINE_up_ref(ENGINE *e)
{
    int i;
    if (e == ((void*)0)) {
        ENGINEerr(ENGINE_F_ENGINE_UP_REF, ERR_R_PASSED_NULL_PARAMETER);
        return 0;
    }
    CRYPTO_UP_REF(&e->struct_ref, &i, global_engine_lock);
    return 1;
}
