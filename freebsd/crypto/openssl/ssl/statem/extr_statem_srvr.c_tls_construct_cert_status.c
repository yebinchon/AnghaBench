
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WPACKET ;
typedef int SSL ;


 int tls_construct_cert_status_body (int *,int *) ;

int tls_construct_cert_status(SSL *s, WPACKET *pkt)
{
    if (!tls_construct_cert_status_body(s, pkt)) {

        return 0;
    }

    return 1;
}
