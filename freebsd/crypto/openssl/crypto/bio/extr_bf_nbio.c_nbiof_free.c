
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ flags; scalar_t__ init; int * ptr; } ;
typedef TYPE_1__ BIO ;


 int OPENSSL_free (int *) ;

__attribute__((used)) static int nbiof_free(BIO *a)
{
    if (a == ((void*)0))
        return 0;
    OPENSSL_free(a->ptr);
    a->ptr = ((void*)0);
    a->init = 0;
    a->flags = 0;
    return 1;
}
