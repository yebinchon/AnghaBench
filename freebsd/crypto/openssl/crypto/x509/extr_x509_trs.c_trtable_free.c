
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int flags; struct TYPE_4__* name; } ;
typedef TYPE_1__ X509_TRUST ;


 int OPENSSL_free (TYPE_1__*) ;
 int X509_TRUST_DYNAMIC ;
 int X509_TRUST_DYNAMIC_NAME ;

__attribute__((used)) static void trtable_free(X509_TRUST *p)
{
    if (!p)
        return;
    if (p->flags & X509_TRUST_DYNAMIC) {
        if (p->flags & X509_TRUST_DYNAMIC_NAME)
            OPENSSL_free(p->name);
        OPENSSL_free(p);
    }
}
