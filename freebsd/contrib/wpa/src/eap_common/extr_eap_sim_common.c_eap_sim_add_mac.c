
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const u8 ;


 int EAP_SIM_K_AUT_LEN ;
 size_t EAP_SIM_MAC_LEN ;
 int MSG_MSGDUMP ;
 int SHA1_MAC_LEN ;
 int hmac_sha1_vector (int const*,int ,int,int const**,size_t*,unsigned char*) ;
 int os_memcpy (int const*,unsigned char*,size_t) ;
 int os_memset (int const*,int ,size_t) ;
 int wpa_hexdump (int ,char*,int const*,size_t) ;
 int wpa_hexdump_key (int ,char*,int const*,int ) ;

void eap_sim_add_mac(const u8 *k_aut, const u8 *msg, size_t msg_len, u8 *mac,
       const u8 *extra, size_t extra_len)
{
 unsigned char hmac[SHA1_MAC_LEN];
 const u8 *addr[2];
 size_t len[2];

 addr[0] = msg;
 len[0] = msg_len;
 addr[1] = extra;
 len[1] = extra_len;


 os_memset(mac, 0, EAP_SIM_MAC_LEN);
 wpa_hexdump(MSG_MSGDUMP, "EAP-SIM: Add MAC - msg", msg, msg_len);
 wpa_hexdump(MSG_MSGDUMP, "EAP-SIM: Add MAC - extra data",
      extra, extra_len);
 wpa_hexdump_key(MSG_MSGDUMP, "EAP-SIM: Add MAC - K_aut",
   k_aut, EAP_SIM_K_AUT_LEN);
 hmac_sha1_vector(k_aut, EAP_SIM_K_AUT_LEN, 2, addr, len, hmac);
 os_memcpy(mac, hmac, EAP_SIM_MAC_LEN);
 wpa_hexdump(MSG_MSGDUMP, "EAP-SIM: Add MAC: MAC",
      mac, EAP_SIM_MAC_LEN);
}
