
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int custom_ext_parse_cb ;
typedef int custom_ext_free_cb ;
typedef int custom_ext_add_cb ;
typedef int SSL_CTX ;


 int ENDPOINT_CLIENT ;
 int SSL_EXT_CLIENT_HELLO ;
 int SSL_EXT_IGNORE_ON_RESUMPTION ;
 int SSL_EXT_TLS1_2_AND_BELOW_ONLY ;
 int SSL_EXT_TLS1_2_SERVER_HELLO ;
 int add_old_custom_ext (int *,int ,unsigned int,int,int ,int ,void*,int ,void*) ;

int SSL_CTX_add_client_custom_ext(SSL_CTX *ctx, unsigned int ext_type,
                                  custom_ext_add_cb add_cb,
                                  custom_ext_free_cb free_cb,
                                  void *add_arg,
                                  custom_ext_parse_cb parse_cb, void *parse_arg)
{
    return add_old_custom_ext(ctx, ENDPOINT_CLIENT, ext_type,
                              SSL_EXT_TLS1_2_AND_BELOW_ONLY
                              | SSL_EXT_CLIENT_HELLO
                              | SSL_EXT_TLS1_2_SERVER_HELLO
                              | SSL_EXT_IGNORE_ON_RESUMPTION,
                              add_cb, free_cb, add_arg, parse_cb, parse_arg);
}
