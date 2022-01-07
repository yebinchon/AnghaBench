
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct p2p_data {int wild_card_hash; } ;


 int P2PS_HASH_LEN ;
 scalar_t__ os_memcmp (scalar_t__ const*,int ,int ) ;

__attribute__((used)) static int p2ps_wildcard_hash(struct p2p_data *p2p,
         const u8 *hash, u8 hash_count)
{
 u8 i;
 const u8 *test = hash;

 for (i = 0; i < hash_count; i++) {
  if (os_memcmp(test, p2p->wild_card_hash, P2PS_HASH_LEN) == 0)
   return 1;
  test += P2PS_HASH_LEN;
 }

 return 0;
}
