
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int seed ;


 int EAP_FAST_PAC_KEY_LEN ;
 int MSG_DEBUG ;
 int TLS_MASTER_SECRET_LEN ;
 int TLS_RANDOM_LEN ;
 int os_memcpy (int *,int const*,int) ;
 int sha1_t_prf (int const*,int ,char*,int *,int,int *,int ) ;
 int wpa_hexdump (int ,char*,int const*,int) ;
 int wpa_hexdump_key (int ,char*,int *,int ) ;

void eap_fast_derive_master_secret(const u8 *pac_key, const u8 *server_random,
       const u8 *client_random, u8 *master_secret)
{


 u8 seed[2 * 32];

 wpa_hexdump(MSG_DEBUG, "EAP-FAST: client_random",
      client_random, 32);
 wpa_hexdump(MSG_DEBUG, "EAP-FAST: server_random",
      server_random, 32);






 os_memcpy(seed, server_random, 32);
 os_memcpy(seed + 32, client_random, 32);
 sha1_t_prf(pac_key, EAP_FAST_PAC_KEY_LEN,
     "PAC to master secret label hash",
     seed, sizeof(seed), master_secret, 48);

 wpa_hexdump_key(MSG_DEBUG, "EAP-FAST: master_secret",
   master_secret, 48);
}
