
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct eap_aka_data {scalar_t__ eap_method; int * id_msgs; } ;


 size_t EAP_AKA_CHECKCODE_LEN ;
 size_t EAP_AKA_PRIME_CHECKCODE_LEN ;
 scalar_t__ EAP_TYPE_AKA_PRIME ;
 int MSG_DEBUG ;
 int SHA256_MAC_LEN ;
 scalar_t__ os_memcmp_const (int *,int const*,size_t) ;
 int sha1_vector (int,int const**,size_t*,int *) ;
 int sha256_vector (int,int const**,size_t*,int *) ;
 int wpa_printf (int ,char*) ;
 int * wpabuf_head (int *) ;
 size_t wpabuf_len (int *) ;

__attribute__((used)) static int eap_aka_verify_checkcode(struct eap_aka_data *data,
        const u8 *checkcode, size_t checkcode_len)
{
 const u8 *addr;
 size_t len;
 u8 hash[SHA256_MAC_LEN];
 size_t hash_len;

 if (checkcode == ((void*)0))
  return -1;

 if (data->id_msgs == ((void*)0)) {
  if (checkcode_len != 0) {
   wpa_printf(MSG_DEBUG, "EAP-AKA: Checkcode from server "
       "indicates that AKA/Identity messages were "
       "used, but they were not");
   return -1;
  }
  return 0;
 }

 hash_len = data->eap_method == EAP_TYPE_AKA_PRIME ?
  EAP_AKA_PRIME_CHECKCODE_LEN : EAP_AKA_CHECKCODE_LEN;

 if (checkcode_len != hash_len) {
  wpa_printf(MSG_DEBUG, "EAP-AKA: Checkcode from server "
      "indicates that AKA/Identity message were not "
      "used, but they were");
  return -1;
 }


 addr = wpabuf_head(data->id_msgs);
 len = wpabuf_len(data->id_msgs);





  sha1_vector(1, &addr, &len, hash);

 if (os_memcmp_const(hash, checkcode, hash_len) != 0) {
  wpa_printf(MSG_DEBUG, "EAP-AKA: Mismatch in AT_CHECKCODE");
  return -1;
 }

 return 0;
}
