
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WPACKET ;
typedef int SSL ;


 int SSL_EXT_TLS1_3_ENCRYPTED_EXTENSIONS ;
 int tls_construct_extensions (int *,int *,int ,int *,int ) ;

__attribute__((used)) static int tls_construct_encrypted_extensions(SSL *s, WPACKET *pkt)
{
    if (!tls_construct_extensions(s, pkt, SSL_EXT_TLS1_3_ENCRYPTED_EXTENSIONS,
                                  ((void*)0), 0)) {

        return 0;
    }

    return 1;
}
