
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* extension_cb_data; int extension_cb; } ;
typedef int TS_extension_cb ;
typedef TYPE_1__ TS_RESP_CTX ;



void TS_RESP_CTX_set_extension_cb(TS_RESP_CTX *ctx,
                                  TS_extension_cb cb, void *data)
{
    ctx->extension_cb = cb;
    ctx->extension_cb_data = data;
}
