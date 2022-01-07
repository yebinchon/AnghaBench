
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tlsv1_server {void (* log_cb ) (void*,char const*) ;void* log_cb_ctx; } ;



void tlsv1_server_set_log_cb(struct tlsv1_server *conn,
        void (*cb)(void *ctx, const char *msg), void *ctx)
{
 conn->log_cb = cb;
 conn->log_cb_ctx = ctx;
}
