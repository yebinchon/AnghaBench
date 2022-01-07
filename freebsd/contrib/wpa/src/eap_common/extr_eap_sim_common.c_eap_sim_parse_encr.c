
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct eap_sim_attrs {int dummy; } ;


 int MSG_INFO ;
 int MSG_MSGDUMP ;
 scalar_t__ aes_128_cbc_decrypt (int const*,int const*,int *,size_t) ;
 scalar_t__ eap_sim_parse_attr (int *,int *,struct eap_sim_attrs*,int,int) ;
 int os_free (int *) ;
 int * os_memdup (int const*,size_t) ;
 int wpa_hexdump (int ,char*,int *,size_t) ;
 int wpa_printf (int ,char*) ;

u8 * eap_sim_parse_encr(const u8 *k_encr, const u8 *encr_data,
   size_t encr_data_len, const u8 *iv,
   struct eap_sim_attrs *attr, int aka)
{
 u8 *decrypted;

 if (!iv) {
  wpa_printf(MSG_INFO, "EAP-SIM: Encrypted data, but no IV");
  return ((void*)0);
 }

 decrypted = os_memdup(encr_data, encr_data_len);
 if (decrypted == ((void*)0))
  return ((void*)0);





 if (aes_128_cbc_decrypt(k_encr, iv, decrypted, encr_data_len)) {
  os_free(decrypted);
  return ((void*)0);
 }

 wpa_hexdump(MSG_MSGDUMP, "EAP-SIM: Decrypted AT_ENCR_DATA",
      decrypted, encr_data_len);

 if (eap_sim_parse_attr(decrypted, decrypted + encr_data_len, attr,
          aka, 1)) {
  wpa_printf(MSG_INFO, "EAP-SIM: (encr) Failed to parse "
      "decrypted AT_ENCR_DATA");
  os_free(decrypted);
  return ((void*)0);
 }

 return decrypted;
}
