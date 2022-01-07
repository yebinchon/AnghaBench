
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lock_basic_type ;


 int CRYPTO_THREADID_set_callback (int *) ;
 int CRYPTO_num_locks () ;
 int CRYPTO_set_id_callback (int *) ;
 int CRYPTO_set_locking_callback (int *) ;
 int lock_basic_init (int *) ;
 scalar_t__ reallocarray (int *,size_t,int) ;
 int ub_crypto_id_cb ;
 int ub_crypto_lock_cb ;
 int * ub_openssl_locks ;

int ub_openssl_lock_init(void)
{
 return 1;
}
