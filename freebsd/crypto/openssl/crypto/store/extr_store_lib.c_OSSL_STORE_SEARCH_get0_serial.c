
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int const* serial; } ;
typedef TYPE_1__ OSSL_STORE_SEARCH ;
typedef int ASN1_INTEGER ;



const ASN1_INTEGER *OSSL_STORE_SEARCH_get0_serial(const OSSL_STORE_SEARCH
                                                 *criterion)
{
    return criterion->serial;
}
