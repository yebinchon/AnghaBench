
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EX_CALLBACKS ;


 int CRYPTO_EX_INDEX__COUNT ;
 int CRYPTO_F_GET_AND_LOCK ;
 int CRYPTO_THREAD_write_lock (int *) ;
 int CRYPTOerr (int ,int ) ;
 int ERR_R_MALLOC_FAILURE ;
 int ERR_R_PASSED_INVALID_ARGUMENT ;
 int RUN_ONCE (int *,int ) ;
 int do_ex_data_init ;
 int * ex_data ;
 int ex_data_init ;
 int * ex_data_lock ;

__attribute__((used)) static EX_CALLBACKS *get_and_lock(int class_index)
{
    EX_CALLBACKS *ip;

    if (class_index < 0 || class_index >= CRYPTO_EX_INDEX__COUNT) {
        CRYPTOerr(CRYPTO_F_GET_AND_LOCK, ERR_R_PASSED_INVALID_ARGUMENT);
        return ((void*)0);
    }

    if (!RUN_ONCE(&ex_data_init, do_ex_data_init)) {
        CRYPTOerr(CRYPTO_F_GET_AND_LOCK, ERR_R_MALLOC_FAILURE);
        return ((void*)0);
    }

    if (ex_data_lock == ((void*)0)) {
         return ((void*)0);
    }

    ip = &ex_data[class_index];
    CRYPTO_THREAD_write_lock(ex_data_lock);
    return ip;
}
