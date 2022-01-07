
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lock; int references; } ;
typedef TYPE_1__ X509_STORE ;


 scalar_t__ CRYPTO_UP_REF (int *,int*,int ) ;
 int REF_ASSERT_ISNT (int) ;
 int REF_PRINT_COUNT (char*,int ) ;
 int a ;

int X509_STORE_up_ref(X509_STORE *vfy)
{
    int i;

    if (CRYPTO_UP_REF(&vfy->references, &i, vfy->lock) <= 0)
        return 0;

    REF_PRINT_COUNT("X509_STORE", a);
    REF_ASSERT_ISNT(i < 2);
    return ((i > 1) ? 1 : 0);
}
