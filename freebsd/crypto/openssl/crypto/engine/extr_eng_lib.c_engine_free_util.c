
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int struct_ref; int ex_data; int (* destroy ) (TYPE_1__*) ;} ;
typedef TYPE_1__ ENGINE ;


 int CRYPTO_DOWN_REF (int*,int*,int ) ;
 int CRYPTO_EX_INDEX_ENGINE ;
 int CRYPTO_free_ex_data (int ,TYPE_1__*,int *) ;
 int OPENSSL_free (TYPE_1__*) ;
 int REF_ASSERT_ISNT (int) ;
 int engine_pkey_asn1_meths_free (TYPE_1__*) ;
 int engine_pkey_meths_free (TYPE_1__*) ;
 int engine_ref_debug (TYPE_1__*,int ,int) ;
 int global_engine_lock ;
 int stub1 (TYPE_1__*) ;

int engine_free_util(ENGINE *e, int not_locked)
{
    int i;

    if (e == ((void*)0))
        return 1;
    if (not_locked)
        CRYPTO_DOWN_REF(&e->struct_ref, &i, global_engine_lock);
    else
        i = --e->struct_ref;
    engine_ref_debug(e, 0, -1);
    if (i > 0)
        return 1;
    REF_ASSERT_ISNT(i < 0);

    engine_pkey_meths_free(e);
    engine_pkey_asn1_meths_free(e);




    if (e->destroy)
        e->destroy(e);
    CRYPTO_free_ex_data(CRYPTO_EX_INDEX_ENGINE, e, &e->ex_data);
    OPENSSL_free(e);
    return 1;
}
