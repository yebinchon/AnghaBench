
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int X509_ALGOR ;
struct TYPE_5__ {TYPE_1__* mac; } ;
struct TYPE_4__ {int * iter; int * salt; int dinfo; } ;
typedef TYPE_2__ PKCS12 ;
typedef int ASN1_OCTET_STRING ;
typedef int ASN1_INTEGER ;


 int X509_SIG_get0 (int ,int const**,int const**) ;

void PKCS12_get0_mac(const ASN1_OCTET_STRING **pmac,
                     const X509_ALGOR **pmacalg,
                     const ASN1_OCTET_STRING **psalt,
                     const ASN1_INTEGER **piter,
                     const PKCS12 *p12)
{
    if (p12->mac) {
        X509_SIG_get0(p12->mac->dinfo, pmacalg, pmac);
        if (psalt)
            *psalt = p12->mac->salt;
        if (piter)
            *piter = p12->mac->iter;
    } else {
        if (pmac)
            *pmac = ((void*)0);
        if (pmacalg)
            *pmacalg = ((void*)0);
        if (psalt)
            *psalt = ((void*)0);
        if (piter)
            *piter = ((void*)0);
    }
}
