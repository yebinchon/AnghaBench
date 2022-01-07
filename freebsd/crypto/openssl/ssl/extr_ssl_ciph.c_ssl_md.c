
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_MD ;


 int SSL_HANDSHAKE_MAC_MASK ;
 int SSL_MD_NUM_IDX ;
 int const** ssl_digest_methods ;

const EVP_MD *ssl_md(int idx)
{
    idx &= SSL_HANDSHAKE_MAC_MASK;
    if (idx < 0 || idx >= SSL_MD_NUM_IDX)
        return ((void*)0);
    return ssl_digest_methods[idx];
}
