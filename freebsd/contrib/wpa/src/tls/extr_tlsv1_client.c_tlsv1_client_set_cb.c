
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tlsv1_client {void (* event_cb ) (void*,int,union tls_event_data*) ;int cert_in_cb; void* cb_ctx; } ;



void tlsv1_client_set_cb(struct tlsv1_client *conn,
    void (*event_cb)(void *ctx, enum tls_event ev,
       union tls_event_data *data),
    void *cb_ctx,
    int cert_in_cb)
{
 conn->event_cb = event_cb;
 conn->cb_ctx = cb_ctx;
 conn->cert_in_cb = !!cert_in_cb;
}
