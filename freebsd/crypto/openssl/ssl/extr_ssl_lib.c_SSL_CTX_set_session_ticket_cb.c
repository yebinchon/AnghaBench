
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* ticket_cb_data; int decrypt_ticket_cb; int generate_ticket_cb; } ;
typedef int SSL_CTX_generate_session_ticket_fn ;
typedef int SSL_CTX_decrypt_session_ticket_fn ;
typedef TYPE_1__ SSL_CTX ;



int SSL_CTX_set_session_ticket_cb(SSL_CTX *ctx,
                                  SSL_CTX_generate_session_ticket_fn gen_cb,
                                  SSL_CTX_decrypt_session_ticket_fn dec_cb,
                                  void *arg)
{
    ctx->generate_ticket_cb = gen_cb;
    ctx->decrypt_ticket_cb = dec_cb;
    ctx->ticket_cb_data = arg;
    return 1;
}
