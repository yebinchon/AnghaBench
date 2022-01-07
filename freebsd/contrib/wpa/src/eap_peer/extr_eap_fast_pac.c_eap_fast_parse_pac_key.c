
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct eap_fast_pac {int pac_key; } ;


 size_t EAP_FAST_PAC_KEY_LEN ;
 int * eap_fast_parse_hex (char*,size_t*) ;
 int os_free (int *) ;
 int os_memcpy (int ,int *,size_t) ;

__attribute__((used)) static const char * eap_fast_parse_pac_key(struct eap_fast_pac *pac, char *pos)
{
 u8 *key;
 size_t key_len;

 key = eap_fast_parse_hex(pos, &key_len);
 if (key == ((void*)0) || key_len != EAP_FAST_PAC_KEY_LEN) {
  os_free(key);
  return "Invalid PAC-Key";
 }

 os_memcpy(pac->pac_key, key, EAP_FAST_PAC_KEY_LEN);
 os_free(key);

 return ((void*)0);
}
