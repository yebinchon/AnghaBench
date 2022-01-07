
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * tst_info; int * response; int * request; } ;
typedef TYPE_1__ TS_RESP_CTX ;


 int TS_REQ_free (int *) ;
 int TS_RESP_free (int *) ;
 int TS_TST_INFO_free (int *) ;

__attribute__((used)) static void ts_RESP_CTX_cleanup(TS_RESP_CTX *ctx)
{
    TS_REQ_free(ctx->request);
    ctx->request = ((void*)0);
    TS_RESP_free(ctx->response);
    ctx->response = ((void*)0);
    TS_TST_INFO_free(ctx->tst_info);
    ctx->tst_info = ((void*)0);
}
