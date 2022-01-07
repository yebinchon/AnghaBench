
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lock; } ;
typedef TYPE_1__ BN_BLINDING ;


 int CRYPTO_THREAD_unlock (int ) ;

int BN_BLINDING_unlock(BN_BLINDING *b)
{
    return CRYPTO_THREAD_unlock(b->lock);
}
