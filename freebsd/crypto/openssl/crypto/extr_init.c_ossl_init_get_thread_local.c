
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread_local_inits_st {int dummy; } ;
struct TYPE_2__ {int value; } ;


 struct thread_local_inits_st* CRYPTO_THREAD_get_local (int *) ;
 int CRYPTO_THREAD_set_local (int *,struct thread_local_inits_st*) ;
 int OPENSSL_free (struct thread_local_inits_st*) ;
 struct thread_local_inits_st* OPENSSL_zalloc (int) ;
 TYPE_1__ destructor_key ;

__attribute__((used)) static struct thread_local_inits_st *ossl_init_get_thread_local(int alloc)
{
    struct thread_local_inits_st *local =
        CRYPTO_THREAD_get_local(&destructor_key.value);

    if (alloc) {
        if (local == ((void*)0)
            && (local = OPENSSL_zalloc(sizeof(*local))) != ((void*)0)
            && !CRYPTO_THREAD_set_local(&destructor_key.value, local)) {
            OPENSSL_free(local);
            return ((void*)0);
        }
    } else {
        CRYPTO_THREAD_set_local(&destructor_key.value, ((void*)0));
    }

    return local;
}
