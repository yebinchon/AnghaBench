
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* record_padding_arg; } ;
typedef TYPE_1__ SSL_CTX ;



void SSL_CTX_set_record_padding_callback_arg(SSL_CTX *ctx, void *arg)
{
    ctx->record_padding_arg = arg;
}
