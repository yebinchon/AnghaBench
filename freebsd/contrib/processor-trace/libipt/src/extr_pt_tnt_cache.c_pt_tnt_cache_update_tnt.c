
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct pt_tnt_cache {int index; int tnt; } ;
struct pt_packet_tnt {int bit_size; int payload; } ;
struct pt_config {int dummy; } ;


 int pte_bad_context ;
 int pte_bad_packet ;
 int pte_invalid ;

int pt_tnt_cache_update_tnt(struct pt_tnt_cache *cache,
       const struct pt_packet_tnt *packet,
       const struct pt_config *config)
{
 uint8_t bit_size;

 (void) config;

 if (!cache || !packet)
  return -pte_invalid;

 if (cache->index)
  return -pte_bad_context;

 bit_size = packet->bit_size;
 if (!bit_size)
  return -pte_bad_packet;

 cache->tnt = packet->payload;
 cache->index = 1ull << (bit_size - 1);

 return 0;
}
