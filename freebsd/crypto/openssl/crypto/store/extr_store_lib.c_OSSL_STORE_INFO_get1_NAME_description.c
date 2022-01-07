
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char* desc; } ;
struct TYPE_6__ {TYPE_1__ name; } ;
struct TYPE_7__ {scalar_t__ type; TYPE_2__ _; } ;
typedef TYPE_3__ OSSL_STORE_INFO ;


 int ERR_R_MALLOC_FAILURE ;
 char* OPENSSL_strdup (char*) ;
 int OSSL_STORE_F_OSSL_STORE_INFO_GET1_NAME_DESCRIPTION ;
 scalar_t__ OSSL_STORE_INFO_NAME ;
 int OSSL_STORE_R_NOT_A_NAME ;
 int OSSL_STOREerr (int ,int ) ;

char *OSSL_STORE_INFO_get1_NAME_description(const OSSL_STORE_INFO *info)
{
    if (info->type == OSSL_STORE_INFO_NAME) {
        char *ret = OPENSSL_strdup(info->_.name.desc
                                   ? info->_.name.desc : "");

        if (ret == ((void*)0))
            OSSL_STOREerr(OSSL_STORE_F_OSSL_STORE_INFO_GET1_NAME_DESCRIPTION,
                     ERR_R_MALLOC_FAILURE);
        return ret;
    }
    OSSL_STOREerr(OSSL_STORE_F_OSSL_STORE_INFO_GET1_NAME_DESCRIPTION,
                  OSSL_STORE_R_NOT_A_NAME);
    return ((void*)0);
}
