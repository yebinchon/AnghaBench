
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


 int OSSL_STORE_F_OSSL_STORE_INFO_GET1_CERT ;
 scalar_t__ OSSL_STORE_INFO_CERT ;
 int OSSL_STORE_R_NOT_A_CERTIFICATE ;
 int OSSL_STOREerr (int ,int ) ;
 int X509_up_ref (int *) ;

X509 *OSSL_STORE_INFO_get1_CERT(const OSSL_STORE_INFO *info)
{
    if (info->type == OSSL_STORE_INFO_CERT) {
        X509_up_ref(info->_.x509);
        return info->_.x509;
    }
    OSSL_STOREerr(OSSL_STORE_F_OSSL_STORE_INFO_GET1_CERT,
                  OSSL_STORE_R_NOT_A_CERTIFICATE);
    return ((void*)0);
}
