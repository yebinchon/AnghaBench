
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int const u8 ;
struct TYPE_2__ {scalar_t__ tls_version; int hash_size; int key_material_len; int iv_size; int const* write_iv; int const* read_iv; int const* read_key; int const* write_key; int const* read_mac_secret; int const* write_mac_secret; } ;
struct tlsv1_client {TYPE_1__ rl; int const* master_secret; int const* client_random; int const* server_random; } ;


 int MSG_DEBUG ;
 int MSG_MSGDUMP ;
 size_t TLS_MASTER_SECRET_LEN ;
 int TLS_MAX_KEY_BLOCK_LEN ;
 int TLS_RANDOM_LEN ;
 scalar_t__ TLS_VERSION_1 ;
 int os_memcpy (int const*,int const*,int) ;
 int os_memset (int const*,int ,int) ;
 scalar_t__ tls_prf (scalar_t__,int const*,size_t,char*,int const*,int,int const*,size_t) ;
 int wpa_hexdump_key (int ,char*,int const*,size_t) ;
 int wpa_printf (int ,char*) ;

int tls_derive_keys(struct tlsv1_client *conn,
      const u8 *pre_master_secret, size_t pre_master_secret_len)
{
 u8 seed[2 * TLS_RANDOM_LEN];
 u8 key_block[TLS_MAX_KEY_BLOCK_LEN];
 u8 *pos;
 size_t key_block_len;

 if (pre_master_secret) {
  wpa_hexdump_key(MSG_MSGDUMP, "TLSv1: pre_master_secret",
    pre_master_secret, pre_master_secret_len);
  os_memcpy(seed, conn->client_random, TLS_RANDOM_LEN);
  os_memcpy(seed + TLS_RANDOM_LEN, conn->server_random,
     TLS_RANDOM_LEN);
  if (tls_prf(conn->rl.tls_version,
       pre_master_secret, pre_master_secret_len,
       "master secret", seed, 2 * TLS_RANDOM_LEN,
       conn->master_secret, TLS_MASTER_SECRET_LEN)) {
   wpa_printf(MSG_DEBUG, "TLSv1: Failed to derive "
       "master_secret");
   return -1;
  }
  wpa_hexdump_key(MSG_MSGDUMP, "TLSv1: master_secret",
    conn->master_secret, TLS_MASTER_SECRET_LEN);
 }

 os_memcpy(seed, conn->server_random, TLS_RANDOM_LEN);
 os_memcpy(seed + TLS_RANDOM_LEN, conn->client_random, TLS_RANDOM_LEN);
 key_block_len = 2 * (conn->rl.hash_size + conn->rl.key_material_len);
 if (conn->rl.tls_version == TLS_VERSION_1)
  key_block_len += 2 * conn->rl.iv_size;
 if (tls_prf(conn->rl.tls_version,
      conn->master_secret, TLS_MASTER_SECRET_LEN,
      "key expansion", seed, 2 * TLS_RANDOM_LEN,
      key_block, key_block_len)) {
  wpa_printf(MSG_DEBUG, "TLSv1: Failed to derive key_block");
  return -1;
 }
 wpa_hexdump_key(MSG_MSGDUMP, "TLSv1: key_block",
   key_block, key_block_len);

 pos = key_block;


 os_memcpy(conn->rl.write_mac_secret, pos, conn->rl.hash_size);
 pos += conn->rl.hash_size;

 os_memcpy(conn->rl.read_mac_secret, pos, conn->rl.hash_size);
 pos += conn->rl.hash_size;


 os_memcpy(conn->rl.write_key, pos, conn->rl.key_material_len);
 pos += conn->rl.key_material_len;

 os_memcpy(conn->rl.read_key, pos, conn->rl.key_material_len);
 pos += conn->rl.key_material_len;

 if (conn->rl.tls_version == TLS_VERSION_1) {

  os_memcpy(conn->rl.write_iv, pos, conn->rl.iv_size);
  pos += conn->rl.iv_size;

  os_memcpy(conn->rl.read_iv, pos, conn->rl.iv_size);
 } else {





  os_memset(conn->rl.write_iv, 0, conn->rl.iv_size);
 }

 return 0;
}
