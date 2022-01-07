
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL_CTX ;


 int SSL_CTRL_SET_SRP_ARG ;
 int tls1_ctx_ctrl (int *,int ,int ,void*) ;

int SSL_CTX_set_srp_cb_arg(SSL_CTX *ctx, void *arg)
{
    return tls1_ctx_ctrl(ctx, SSL_CTRL_SET_SRP_ARG, 0, arg);
}
