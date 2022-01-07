
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tls_connection {int session; } ;
typedef int gnutls_mac_algorithm_t ;
typedef scalar_t__ gnutls_kx_algorithm_t ;
typedef int gnutls_cipher_algorithm_t ;


 scalar_t__ GNUTLS_KX_RSA ;
 int gnutls_cipher_get (int ) ;
 char* gnutls_cipher_get_name (int ) ;
 scalar_t__ gnutls_kx_get (int ) ;
 char* gnutls_kx_get_name (scalar_t__) ;
 int gnutls_mac_get (int ) ;
 char* gnutls_mac_get_name (int ) ;
 int os_snprintf (char*,size_t,char*,char const*,char const*,...) ;
 scalar_t__ os_snprintf_error (size_t,int) ;

int tls_get_cipher(void *ssl_ctx, struct tls_connection *conn,
     char *buf, size_t buflen)
{
 gnutls_cipher_algorithm_t cipher;
 gnutls_kx_algorithm_t kx;
 gnutls_mac_algorithm_t mac;
 const char *kx_str, *cipher_str, *mac_str;
 int res;

 cipher = gnutls_cipher_get(conn->session);
 cipher_str = gnutls_cipher_get_name(cipher);
 if (!cipher_str)
  cipher_str = "";

 kx = gnutls_kx_get(conn->session);
 kx_str = gnutls_kx_get_name(kx);
 if (!kx_str)
  kx_str = "";

 mac = gnutls_mac_get(conn->session);
 mac_str = gnutls_mac_get_name(mac);
 if (!mac_str)
  mac_str = "";

 if (kx == GNUTLS_KX_RSA)
  res = os_snprintf(buf, buflen, "%s-%s", cipher_str, mac_str);
 else
  res = os_snprintf(buf, buflen, "%s-%s-%s",
      kx_str, cipher_str, mac_str);
 if (os_snprintf_error(buflen, res))
  return -1;

 return 0;
}
