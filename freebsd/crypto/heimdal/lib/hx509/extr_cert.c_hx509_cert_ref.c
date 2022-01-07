
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* hx509_cert ;
struct TYPE_4__ {scalar_t__ ref; } ;


 int _hx509_abort (char*) ;

hx509_cert
hx509_cert_ref(hx509_cert cert)
{
    if (cert == ((void*)0))
 return ((void*)0);
    if (cert->ref <= 0)
 _hx509_abort("cert refcount <= 0");
    cert->ref++;
    if (cert->ref == 0)
 _hx509_abort("cert refcount == 0");
    return cert;
}
