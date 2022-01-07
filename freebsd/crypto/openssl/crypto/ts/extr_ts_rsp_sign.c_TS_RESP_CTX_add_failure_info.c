
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* response; } ;
struct TYPE_6__ {int * failure_info; } ;
struct TYPE_5__ {TYPE_2__* status_info; } ;
typedef TYPE_2__ TS_STATUS_INFO ;
typedef TYPE_3__ TS_RESP_CTX ;


 int * ASN1_BIT_STRING_new () ;
 int ASN1_BIT_STRING_set_bit (int *,int,int) ;
 int ERR_R_MALLOC_FAILURE ;
 int TS_F_TS_RESP_CTX_ADD_FAILURE_INFO ;
 int TSerr (int ,int ) ;

int TS_RESP_CTX_add_failure_info(TS_RESP_CTX *ctx, int failure)
{
    TS_STATUS_INFO *si = ctx->response->status_info;
    if (si->failure_info == ((void*)0)
        && (si->failure_info = ASN1_BIT_STRING_new()) == ((void*)0))
        goto err;
    if (!ASN1_BIT_STRING_set_bit(si->failure_info, failure, 1))
        goto err;
    return 1;
 err:
    TSerr(TS_F_TS_RESP_CTX_ADD_FAILURE_INFO, ERR_R_MALLOC_FAILURE);
    return 0;
}
