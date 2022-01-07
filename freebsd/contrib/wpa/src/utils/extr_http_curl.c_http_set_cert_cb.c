
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct http_ctx {int (* cert_cb ) (void*,struct http_cert*) ;void* cert_cb_ctx; } ;



void http_set_cert_cb(struct http_ctx *ctx,
        int (*cb)(void *ctx, struct http_cert *cert),
        void *cb_ctx)
{
 ctx->cert_cb = cb;
 ctx->cert_cb_ctx = cb_ctx;
}
