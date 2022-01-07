
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct tls_connection {int ssl; } ;
typedef int SSL_CIPHER ;


 int SSL_CIPHER_get_id (int const*) ;
 int SSL_CIPHER_get_protocol_id (int const*) ;
 int * SSL_get_current_cipher (int ) ;

u16 tls_connection_get_cipher_suite(struct tls_connection *conn)
{
 const SSL_CIPHER *cipher;

 cipher = SSL_get_current_cipher(conn->ssl);
 if (!cipher)
  return 0;



 return SSL_CIPHER_get_id(cipher) & 0xFFFF;

}
