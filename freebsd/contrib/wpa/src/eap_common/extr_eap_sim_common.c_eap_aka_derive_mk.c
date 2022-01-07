
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const u8 ;


 size_t EAP_AKA_CK_LEN ;
 size_t EAP_AKA_IK_LEN ;
 size_t EAP_SIM_MK_LEN ;
 int MSG_DEBUG ;
 int sha1_vector (int,int const**,size_t*,int const*) ;
 int wpa_hexdump_key (int ,char*,int const*,size_t) ;

void eap_aka_derive_mk(const u8 *identity, size_t identity_len,
         const u8 *ik, const u8 *ck, u8 *mk)
{
 const u8 *addr[3];
 size_t len[3];

 addr[0] = identity;
 len[0] = identity_len;
 addr[1] = ik;
 len[1] = EAP_AKA_IK_LEN;
 addr[2] = ck;
 len[2] = EAP_AKA_CK_LEN;


 sha1_vector(3, addr, len, mk);
 wpa_hexdump_key(MSG_DEBUG, "EAP-AKA: IK", ik, EAP_AKA_IK_LEN);
 wpa_hexdump_key(MSG_DEBUG, "EAP-AKA: CK", ck, EAP_AKA_CK_LEN);
 wpa_hexdump_key(MSG_DEBUG, "EAP-AKA: MK", mk, EAP_SIM_MK_LEN);
}
