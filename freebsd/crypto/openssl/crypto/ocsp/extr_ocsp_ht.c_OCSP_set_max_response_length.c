
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned long max_resp_len; } ;
typedef TYPE_1__ OCSP_REQ_CTX ;


 unsigned long OCSP_MAX_RESP_LENGTH ;

void OCSP_set_max_response_length(OCSP_REQ_CTX *rctx, unsigned long len)
{
    if (len == 0)
        rctx->max_resp_len = OCSP_MAX_RESP_LENGTH;
    else
        rctx->max_resp_len = len;
}
