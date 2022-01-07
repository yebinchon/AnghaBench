
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evrpc_request_wrapper {void (* cb ) (struct evrpc_status*,void*,void*,void*) ;void* cb_arg; } ;



void
evrpc_request_set_cb(struct evrpc_request_wrapper *ctx,
    void (*cb)(struct evrpc_status*, void *request, void *reply, void *arg),
    void *cb_arg)
{
 ctx->cb = cb;
 ctx->cb_arg = cb_arg;
}
