
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * blob; } ;
struct TYPE_6__ {TYPE_1__ embedded; } ;
struct TYPE_7__ {scalar_t__ type; TYPE_2__ _; } ;
typedef TYPE_3__ OSSL_STORE_INFO ;
typedef int BUF_MEM ;


 scalar_t__ OSSL_STORE_INFO_EMBEDDED ;

BUF_MEM *ossl_store_info_get0_EMBEDDED_buffer(OSSL_STORE_INFO *info)
{
    if (info->type == OSSL_STORE_INFO_EMBEDDED)
        return info->_.embedded.blob;
    return ((void*)0);
}
