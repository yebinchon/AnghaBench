
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tid; } ;
typedef TYPE_1__ BN_BLINDING ;


 int CRYPTO_THREAD_compare_id (int ,int ) ;
 int CRYPTO_THREAD_get_current_id () ;

int BN_BLINDING_is_current_thread(BN_BLINDING *b)
{
    return CRYPTO_THREAD_compare_id(CRYPTO_THREAD_get_current_id(), b->tid);
}
