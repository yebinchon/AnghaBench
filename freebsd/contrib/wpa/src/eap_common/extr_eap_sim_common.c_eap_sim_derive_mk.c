
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char u8 ;
typedef int u16 ;


 int EAP_SIM_KC_LEN ;
 int EAP_SIM_MK_LEN ;
 size_t EAP_SIM_NONCE_MT_LEN ;
 int MSG_DEBUG ;
 int WPA_PUT_BE16 (unsigned char*,int ) ;
 int sha1_vector (int,unsigned char const**,size_t*,unsigned char*) ;
 int wpa_hexdump_key (int ,char*,unsigned char*,int ) ;

void eap_sim_derive_mk(const u8 *identity, size_t identity_len,
         const u8 *nonce_mt, u16 selected_version,
         const u8 *ver_list, size_t ver_list_len,
         int num_chal, const u8 *kc, u8 *mk)
{
 u8 sel_ver[2];
 const unsigned char *addr[5];
 size_t len[5];

 addr[0] = identity;
 len[0] = identity_len;
 addr[1] = kc;
 len[1] = num_chal * EAP_SIM_KC_LEN;
 addr[2] = nonce_mt;
 len[2] = EAP_SIM_NONCE_MT_LEN;
 addr[3] = ver_list;
 len[3] = ver_list_len;
 addr[4] = sel_ver;
 len[4] = 2;

 WPA_PUT_BE16(sel_ver, selected_version);


 sha1_vector(5, addr, len, mk);
 wpa_hexdump_key(MSG_DEBUG, "EAP-SIM: MK", mk, EAP_SIM_MK_LEN);
}
