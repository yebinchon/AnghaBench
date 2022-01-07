
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int quiet_shutdown; } ;
typedef TYPE_1__ SSL_CTX ;



int SSL_CTX_get_quiet_shutdown(const SSL_CTX *ctx)
{
    return ctx->quiet_shutdown;
}
