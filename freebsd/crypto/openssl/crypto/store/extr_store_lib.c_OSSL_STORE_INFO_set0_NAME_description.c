
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


 int ERR_R_PASSED_INVALID_ARGUMENT ;
 int OSSL_STORE_F_OSSL_STORE_INFO_SET0_NAME_DESCRIPTION ;
 scalar_t__ OSSL_STORE_INFO_NAME ;
 int OSSL_STOREerr (int ,int ) ;

int OSSL_STORE_INFO_set0_NAME_description(OSSL_STORE_INFO *info, char *desc)
{
    if (info->type != OSSL_STORE_INFO_NAME) {
        OSSL_STOREerr(OSSL_STORE_F_OSSL_STORE_INFO_SET0_NAME_DESCRIPTION,
                      ERR_R_PASSED_INVALID_ARGUMENT);
        return 0;
    }

    info->_.name.desc = desc;

    return 1;
}
