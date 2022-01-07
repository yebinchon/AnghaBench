
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int const u8 ;
typedef size_t u16 ;
typedef scalar_t__ tls_key_exchange ;
struct TYPE_2__ {scalar_t__ tls_version; } ;
struct tlsv1_client {size_t dh_p_len; int const* dh_p; size_t dh_g_len; int const* dh_g; size_t dh_ys_len; int const* dh_ys; int server_rsa_key; TYPE_1__ rl; int server_random; int client_random; } ;


 int MSG_DEBUG ;
 int MSG_INFO ;
 int MSG_MSGDUMP ;
 int const TLS_HASH_ALG_SHA256 ;
 int const TLS_HASH_ALG_SHA384 ;
 int const TLS_HASH_ALG_SHA512 ;
 scalar_t__ TLS_KEY_X_DHE_RSA ;
 int const TLS_SIGN_ALG_RSA ;
 scalar_t__ TLS_VERSION_1_2 ;
 size_t WPA_GET_BE16 (int const*) ;
 unsigned int count_bits (int const*,size_t) ;
 void* os_memdup (int const*,size_t) ;
 int tls_key_x_server_params_hash (scalar_t__,int ,int ,int const*,int,int const*) ;
 scalar_t__ tls_verify_signature (scalar_t__,int ,int const*,int,int const*,int,int const*) ;
 int tlsv12_key_x_server_params_hash (scalar_t__,int const,int ,int ,int const*,int,int const*) ;
 int tlsv1_client_free_dh (struct tlsv1_client*) ;
 int wpa_hexdump (int ,char*,int const*,int) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static int tlsv1_process_diffie_hellman(struct tlsv1_client *conn,
     const u8 *buf, size_t len,
     tls_key_exchange key_exchange)
{
 const u8 *pos, *end, *server_params, *server_params_end;
 u8 alert;
 unsigned int bits;
 u16 val;

 tlsv1_client_free_dh(conn);

 pos = buf;
 end = buf + len;

 if (end - pos < 3)
  goto fail;
 server_params = pos;
 val = WPA_GET_BE16(pos);
 pos += 2;
 if (val == 0 || val > (size_t) (end - pos)) {
  wpa_printf(MSG_DEBUG, "TLSv1: Invalid dh_p length %u", val);
  goto fail;
 }
 conn->dh_p_len = val;
 bits = count_bits(pos, conn->dh_p_len);
 if (bits < 768) {
  wpa_printf(MSG_INFO, "TLSv1: Reject under 768-bit DH prime (insecure; only %u bits)",
      bits);
  wpa_hexdump(MSG_DEBUG, "TLSv1: Rejected DH prime",
       pos, conn->dh_p_len);
  goto fail;
 }
 conn->dh_p = os_memdup(pos, conn->dh_p_len);
 if (conn->dh_p == ((void*)0))
  goto fail;
 pos += conn->dh_p_len;
 wpa_hexdump(MSG_DEBUG, "TLSv1: DH p (prime)",
      conn->dh_p, conn->dh_p_len);

 if (end - pos < 3)
  goto fail;
 val = WPA_GET_BE16(pos);
 pos += 2;
 if (val == 0 || val > (size_t) (end - pos))
  goto fail;
 conn->dh_g_len = val;
 conn->dh_g = os_memdup(pos, conn->dh_g_len);
 if (conn->dh_g == ((void*)0))
  goto fail;
 pos += conn->dh_g_len;
 wpa_hexdump(MSG_DEBUG, "TLSv1: DH g (generator)",
      conn->dh_g, conn->dh_g_len);
 if (conn->dh_g_len == 1 && conn->dh_g[0] < 2)
  goto fail;

 if (end - pos < 3)
  goto fail;
 val = WPA_GET_BE16(pos);
 pos += 2;
 if (val == 0 || val > (size_t) (end - pos))
  goto fail;
 conn->dh_ys_len = val;
 conn->dh_ys = os_memdup(pos, conn->dh_ys_len);
 if (conn->dh_ys == ((void*)0))
  goto fail;
 pos += conn->dh_ys_len;
 wpa_hexdump(MSG_DEBUG, "TLSv1: DH Ys (server's public value)",
      conn->dh_ys, conn->dh_ys_len);
 server_params_end = pos;

 if (key_exchange == TLS_KEY_X_DHE_RSA) {
  u8 hash[64];
  int hlen;

  if (conn->rl.tls_version == TLS_VERSION_1_2) {
   goto fail;

  } else {
   hlen = tls_key_x_server_params_hash(
    conn->rl.tls_version, conn->client_random,
    conn->server_random, server_params,
    server_params_end - server_params, hash);
  }

  if (hlen < 0)
   goto fail;
  wpa_hexdump(MSG_MSGDUMP, "TLSv1: ServerKeyExchange hash",
       hash, hlen);

  if (tls_verify_signature(conn->rl.tls_version,
      conn->server_rsa_key,
      hash, hlen, pos, end - pos,
      &alert) < 0)
   goto fail;
 }

 return 0;

fail:
 wpa_printf(MSG_DEBUG, "TLSv1: Processing DH params failed");
 tlsv1_client_free_dh(conn);
 return -1;
}
