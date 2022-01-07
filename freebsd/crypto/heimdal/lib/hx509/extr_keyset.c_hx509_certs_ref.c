
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* hx509_certs ;
struct TYPE_4__ {scalar_t__ ref; } ;


 scalar_t__ UINT_MAX ;
 int _hx509_abort (char*) ;

hx509_certs
hx509_certs_ref(hx509_certs certs)
{
    if (certs == ((void*)0))
 return ((void*)0);
    if (certs->ref == 0)
 _hx509_abort("certs refcount == 0 on ref");
    if (certs->ref == UINT_MAX)
 _hx509_abort("certs refcount == UINT_MAX on ref");
    certs->ref++;
    return certs;
}
