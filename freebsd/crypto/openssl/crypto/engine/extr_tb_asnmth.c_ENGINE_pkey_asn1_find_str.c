
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int struct_ref; } ;
struct TYPE_6__ {char const* str; int len; int const* ameth; TYPE_2__* e; } ;
typedef int EVP_PKEY_ASN1_METHOD ;
typedef TYPE_1__ ENGINE_FIND_STR ;
typedef TYPE_2__ ENGINE ;


 int CRYPTO_THREAD_unlock (int ) ;
 int CRYPTO_THREAD_write_lock (int ) ;
 int ENGINE_F_ENGINE_PKEY_ASN1_FIND_STR ;
 int ENGINEerr (int ,int ) ;
 int ERR_R_MALLOC_FAILURE ;
 int RUN_ONCE (int *,int ) ;
 int do_engine_lock_init ;
 int engine_lock_init ;
 int engine_ref_debug (TYPE_2__*,int ,int) ;
 int engine_table_doall (int ,int ,TYPE_1__*) ;
 int global_engine_lock ;
 int look_str_cb ;
 int pkey_asn1_meth_table ;

const EVP_PKEY_ASN1_METHOD *ENGINE_pkey_asn1_find_str(ENGINE **pe,
                                                      const char *str,
                                                      int len)
{
    ENGINE_FIND_STR fstr;
    fstr.e = ((void*)0);
    fstr.ameth = ((void*)0);
    fstr.str = str;
    fstr.len = len;

    if (!RUN_ONCE(&engine_lock_init, do_engine_lock_init)) {
        ENGINEerr(ENGINE_F_ENGINE_PKEY_ASN1_FIND_STR, ERR_R_MALLOC_FAILURE);
        return ((void*)0);
    }

    CRYPTO_THREAD_write_lock(global_engine_lock);
    engine_table_doall(pkey_asn1_meth_table, look_str_cb, &fstr);

    if (fstr.e) {
        fstr.e->struct_ref++;
        engine_ref_debug(fstr.e, 0, 1);
    }
    *pe = fstr.e;
    CRYPTO_THREAD_unlock(global_engine_lock);
    return fstr.ameth;
}
