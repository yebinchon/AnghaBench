
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tls_connection {int * ssl; } ;
typedef int seed ;
typedef int byte ;
typedef int WOLFSSL ;


 int RAN_LEN ;
 int SEED_LEN ;
 scalar_t__ WOLFSSL_TLSV1_2 ;
 int bin_clear_free (int *,int) ;
 int forced_memzero (int *,unsigned int) ;
 int * os_malloc (int) ;
 int os_memcpy (int *,int *,size_t) ;
 int tls_prf_sha1_md5 (int *,unsigned int,char*,int *,int,int *,int) ;
 int tls_prf_sha256 (int *,unsigned int,char*,int *,int,int *,int) ;
 int wolfSSL_GetHmacSize (int *) ;
 int wolfSSL_GetIVSize (int *) ;
 int wolfSSL_GetKeySize (int *) ;
 scalar_t__ wolfSSL_GetVersion (int *) ;
 int wolfSSL_get_keys (int *,int **,unsigned int*,int **,unsigned int*,int **,unsigned int*) ;

int tls_connection_get_eap_fast_key(void *tls_ctx, struct tls_connection *conn,
        u8 *out, size_t out_len)
{
 byte seed[SEED_LEN];
 int ret = -1;
 WOLFSSL *ssl;
 byte *tmp_out;
 byte *_out;
 int skip = 0;
 byte *master_key;
 unsigned int master_key_len;
 byte *server_random;
 unsigned int server_len;
 byte *client_random;
 unsigned int client_len;

 if (!conn || !conn->ssl)
  return -1;
 ssl = conn->ssl;

 skip = 2 * (wolfSSL_GetKeySize(ssl) + wolfSSL_GetHmacSize(ssl) +
      wolfSSL_GetIVSize(ssl));

 tmp_out = os_malloc(skip + out_len);
 if (!tmp_out)
  return -1;
 _out = tmp_out;

 wolfSSL_get_keys(ssl, &master_key, &master_key_len, &server_random,
    &server_len, &client_random, &client_len);
 os_memcpy(seed, server_random, RAN_LEN);
 os_memcpy(seed + RAN_LEN, client_random, RAN_LEN);

 if (wolfSSL_GetVersion(ssl) == WOLFSSL_TLSV1_2) {
  tls_prf_sha256(master_key, master_key_len,
          "key expansion", seed, sizeof(seed),
          _out, skip + out_len);
  ret = 0;
 } else {
  ret = tls_prf_sha1_md5(master_key, master_key_len,
           "key expansion", seed, sizeof(seed),
           _out, skip + out_len);
 }

 forced_memzero(master_key, master_key_len);
 if (ret == 0)
  os_memcpy(out, _out + skip, out_len);
 bin_clear_free(tmp_out, skip + out_len);

 return ret;
}
