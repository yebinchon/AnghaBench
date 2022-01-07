
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WOLFSSL ;


 int SSL_OP_NO_TLSv1 ;
 int SSL_OP_NO_TLSv1_1 ;
 int SSL_OP_NO_TLSv1_2 ;
 unsigned int TLS_CONN_DISABLE_SESSION_TICKET ;
 unsigned int TLS_CONN_DISABLE_TLSv1_0 ;
 unsigned int TLS_CONN_DISABLE_TLSv1_1 ;
 unsigned int TLS_CONN_DISABLE_TLSv1_2 ;
 int wolfSSL_UseSessionTicket (int *) ;
 int wolfSSL_set_options (int *,int ) ;

__attribute__((used)) static void tls_set_conn_flags(WOLFSSL *ssl, unsigned int flags)
{







 if (flags & TLS_CONN_DISABLE_TLSv1_0)
  wolfSSL_set_options(ssl, SSL_OP_NO_TLSv1);
 if (flags & TLS_CONN_DISABLE_TLSv1_1)
  wolfSSL_set_options(ssl, SSL_OP_NO_TLSv1_1);
 if (flags & TLS_CONN_DISABLE_TLSv1_2)
  wolfSSL_set_options(ssl, SSL_OP_NO_TLSv1_2);
}
