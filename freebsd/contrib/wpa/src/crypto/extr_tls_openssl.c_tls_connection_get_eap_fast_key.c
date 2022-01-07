
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char u8 ;
struct tls_connection {int * ssl; } ;
typedef int server_random ;
typedef int master_key ;
typedef int client_random ;
typedef int SSL_SESSION ;
typedef int SSL ;


 int MSG_ERROR ;
 int SSL3_RANDOM_SIZE ;
 size_t SSL_SESSION_get_master_key (int *,unsigned char*,int) ;
 int SSL_get_client_random (int *,unsigned char*,int) ;
 int SSL_get_server_random (int *,unsigned char*,int) ;
 int * SSL_get_session (int *) ;
 char* SSL_get_version (int *) ;
 int bin_clear_free (unsigned char*,int) ;
 int forced_memzero (unsigned char*,int) ;
 int openssl_get_keyblock_size (int *) ;
 int os_free (unsigned char*) ;
 unsigned char* os_malloc (int) ;
 int os_memcpy (unsigned char*,unsigned char*,size_t) ;
 scalar_t__ os_strcmp (char const*,char*) ;
 scalar_t__ tls_prf_sha1_md5 (unsigned char*,size_t,char*,unsigned char*,int,unsigned char*,int) ;
 int tls_prf_sha256 (unsigned char*,size_t,char*,unsigned char*,int,unsigned char*,int) ;
 int wpa_printf (int ,char*) ;

int tls_connection_get_eap_fast_key(void *tls_ctx, struct tls_connection *conn,
        u8 *out, size_t out_len)
{
 wpa_printf(MSG_ERROR,
     "OpenSSL: EAP-FAST keys cannot be exported in FIPS mode");
 return -1;

}
