
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct p2p_data {int * wild_card_hash; } ;
typedef int str_buf ;


 int P2PS_HASH_LEN ;
 int SHA256_MAC_LEN ;
 int os_memcpy (int *,int *,int ) ;
 size_t os_strlen (char const*) ;
 scalar_t__ sha256_vector (int,int const**,size_t*,int *) ;

__attribute__((used)) static int p2ps_gen_hash(struct p2p_data *p2p, const char *str, u8 *hash)
{
 u8 buf[SHA256_MAC_LEN];
 char str_buf[256];
 const u8 *adv_array;
 size_t i, adv_len;

 if (!str || !hash)
  return 0;

 if (!str[0]) {
  os_memcpy(hash, p2p->wild_card_hash, P2PS_HASH_LEN);
  return 1;
 }

 adv_array = (u8 *) str_buf;
 adv_len = os_strlen(str);
 if (adv_len >= sizeof(str_buf))
  return 0;

 for (i = 0; i < adv_len; i++) {
  if (str[i] >= 'A' && str[i] <= 'Z')
   str_buf[i] = str[i] - 'A' + 'a';
  else
   str_buf[i] = str[i];
 }

 if (sha256_vector(1, &adv_array, &adv_len, buf))
  return 0;

 os_memcpy(hash, buf, P2PS_HASH_LEN);
 return 1;
}
