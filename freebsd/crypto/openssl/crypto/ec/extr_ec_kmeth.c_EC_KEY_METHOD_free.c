
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int flags; } ;
typedef TYPE_1__ EC_KEY_METHOD ;


 int EC_KEY_METHOD_DYNAMIC ;
 int OPENSSL_free (TYPE_1__*) ;

void EC_KEY_METHOD_free(EC_KEY_METHOD *meth)
{
    if (meth->flags & EC_KEY_METHOD_DYNAMIC)
        OPENSSL_free(meth);
}
