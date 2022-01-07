
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lock; } ;
typedef TYPE_1__ X509_STORE ;


 int CRYPTO_THREAD_unlock (int ) ;

int X509_STORE_unlock(X509_STORE *s)
{
    return CRYPTO_THREAD_unlock(s->lock);
}
