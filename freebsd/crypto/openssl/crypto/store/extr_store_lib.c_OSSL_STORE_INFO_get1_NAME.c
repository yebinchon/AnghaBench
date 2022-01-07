
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int name; } ;
struct TYPE_6__ {TYPE_1__ name; } ;
struct TYPE_7__ {scalar_t__ type; TYPE_2__ _; } ;
typedef TYPE_3__ OSSL_STORE_INFO ;


 int ERR_R_MALLOC_FAILURE ;
 char* OPENSSL_strdup (int ) ;
 int OSSL_STORE_F_OSSL_STORE_INFO_GET1_NAME ;
 scalar_t__ OSSL_STORE_INFO_NAME ;
 int OSSL_STORE_R_NOT_A_NAME ;
 int OSSL_STOREerr (int ,int ) ;

char *OSSL_STORE_INFO_get1_NAME(const OSSL_STORE_INFO *info)
{
    if (info->type == OSSL_STORE_INFO_NAME) {
        char *ret = OPENSSL_strdup(info->_.name.name);

        if (ret == ((void*)0))
            OSSL_STOREerr(OSSL_STORE_F_OSSL_STORE_INFO_GET1_NAME,
                          ERR_R_MALLOC_FAILURE);
        return ret;
    }
    OSSL_STOREerr(OSSL_STORE_F_OSSL_STORE_INFO_GET1_NAME,
                  OSSL_STORE_R_NOT_A_NAME);
    return ((void*)0);
}
