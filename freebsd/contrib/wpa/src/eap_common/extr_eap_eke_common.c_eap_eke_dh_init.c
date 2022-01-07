
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dh_group {int prime_len; int prime; } ;


 int MSG_DEBUG ;
 scalar_t__ crypto_dh_init (int,int ,int ,int*,int*) ;
 int eap_eke_dh_generator (int) ;
 struct dh_group* eap_eke_dh_group (int) ;
 int wpa_hexdump (int ,char*,int*,int ) ;
 int wpa_hexdump_key (int ,char*,int*,int ) ;

int eap_eke_dh_init(u8 group, u8 *ret_priv, u8 *ret_pub)
{
 int generator;
 u8 gen;
 const struct dh_group *dh;

 generator = eap_eke_dh_generator(group);
 dh = eap_eke_dh_group(group);
 if (generator < 0 || generator > 255 || !dh)
  return -1;
 gen = generator;

 if (crypto_dh_init(gen, dh->prime, dh->prime_len, ret_priv,
      ret_pub) < 0)
  return -1;
 wpa_hexdump_key(MSG_DEBUG, "EAP-EKE: DH private value",
   ret_priv, dh->prime_len);
 wpa_hexdump(MSG_DEBUG, "EAP-EKE: DH public value",
      ret_pub, dh->prime_len);

 return 0;
}
