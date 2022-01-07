
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int tls_version; } ;
struct tlsv1_client {size_t num_cipher_suites; TYPE_1__ rl; int * cipher_suites; int verify; int state; } ;


 int CLIENT_HELLO ;
 int MSG_DEBUG ;
 int TLS_DHE_RSA_WITH_3DES_EDE_CBC_SHA ;
 int TLS_DHE_RSA_WITH_AES_128_CBC_SHA ;
 int TLS_DHE_RSA_WITH_AES_128_CBC_SHA256 ;
 int TLS_DHE_RSA_WITH_AES_256_CBC_SHA ;
 int TLS_DHE_RSA_WITH_AES_256_CBC_SHA256 ;
 int TLS_RSA_WITH_3DES_EDE_CBC_SHA ;
 int TLS_RSA_WITH_AES_128_CBC_SHA ;
 int TLS_RSA_WITH_AES_128_CBC_SHA256 ;
 int TLS_RSA_WITH_AES_256_CBC_SHA ;
 int TLS_RSA_WITH_AES_256_CBC_SHA256 ;
 int TLS_RSA_WITH_RC4_128_MD5 ;
 int TLS_RSA_WITH_RC4_128_SHA ;
 int TLS_VERSION ;
 int os_free (struct tlsv1_client*) ;
 struct tlsv1_client* os_zalloc (int) ;
 scalar_t__ tls_verify_hash_init (int *) ;
 int wpa_printf (int ,char*) ;

struct tlsv1_client * tlsv1_client_init(void)
{
 struct tlsv1_client *conn;
 size_t count;
 u16 *suites;

 conn = os_zalloc(sizeof(*conn));
 if (conn == ((void*)0))
  return ((void*)0);

 conn->state = CLIENT_HELLO;

 if (tls_verify_hash_init(&conn->verify) < 0) {
  wpa_printf(MSG_DEBUG, "TLSv1: Failed to initialize verify "
      "hash");
  os_free(conn);
  return ((void*)0);
 }

 count = 0;
 suites = conn->cipher_suites;
 suites[count++] = TLS_DHE_RSA_WITH_AES_256_CBC_SHA256;
 suites[count++] = TLS_RSA_WITH_AES_256_CBC_SHA256;
 suites[count++] = TLS_DHE_RSA_WITH_AES_256_CBC_SHA;
 suites[count++] = TLS_RSA_WITH_AES_256_CBC_SHA;
 suites[count++] = TLS_DHE_RSA_WITH_AES_128_CBC_SHA256;
 suites[count++] = TLS_RSA_WITH_AES_128_CBC_SHA256;
 suites[count++] = TLS_DHE_RSA_WITH_AES_128_CBC_SHA;
 suites[count++] = TLS_RSA_WITH_AES_128_CBC_SHA;
 suites[count++] = TLS_DHE_RSA_WITH_3DES_EDE_CBC_SHA;
 suites[count++] = TLS_RSA_WITH_3DES_EDE_CBC_SHA;
 suites[count++] = TLS_RSA_WITH_RC4_128_SHA;
 suites[count++] = TLS_RSA_WITH_RC4_128_MD5;
 conn->num_cipher_suites = count;

 conn->rl.tls_version = TLS_VERSION;

 return conn;
}
