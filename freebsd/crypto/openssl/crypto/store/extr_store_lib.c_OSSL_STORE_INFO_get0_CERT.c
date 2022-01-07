
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int X509 ;
struct TYPE_4__ {int * x509; } ;
struct TYPE_5__ {scalar_t__ type; TYPE_1__ _; } ;
typedef TYPE_2__ OSSL_STORE_INFO ;


 scalar_t__ OSSL_STORE_INFO_CERT ;

X509 *OSSL_STORE_INFO_get0_CERT(const OSSL_STORE_INFO *info)
{
    if (info->type == OSSL_STORE_INFO_CERT)
        return info->_.x509;
    return ((void*)0);
}
