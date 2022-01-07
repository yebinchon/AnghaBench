
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct rx_header {int serviceId; int callNumber; } ;
struct TYPE_4__ {scalar_t__ s_addr; } ;
struct TYPE_3__ {scalar_t__ s_addr; } ;
struct rx_cache_entry {scalar_t__ callnum; scalar_t__ serviceId; int dport; int opcode; TYPE_2__ server; TYPE_1__ client; } ;
struct ip {int ip_src; int ip_dst; } ;
typedef int int32_t ;


 scalar_t__ EXTRACT_32BITS (int *) ;
 int RX_CACHE_SIZE ;
 int UNALIGNED_MEMCPY (scalar_t__*,int *,int) ;
 struct rx_cache_entry* rx_cache ;
 int rx_cache_hint ;

__attribute__((used)) static int
rx_cache_find(const struct rx_header *rxh, const struct ip *ip, int sport,
       int32_t *opcode)
{
 int i;
 struct rx_cache_entry *rxent;
 uint32_t clip;
 uint32_t sip;

 UNALIGNED_MEMCPY(&clip, &ip->ip_dst, sizeof(uint32_t));
 UNALIGNED_MEMCPY(&sip, &ip->ip_src, sizeof(uint32_t));



 i = rx_cache_hint;
 do {
  rxent = &rx_cache[i];
  if (rxent->callnum == EXTRACT_32BITS(&rxh->callNumber) &&
      rxent->client.s_addr == clip &&
      rxent->server.s_addr == sip &&
      rxent->serviceId == EXTRACT_32BITS(&rxh->serviceId) &&
      rxent->dport == sport) {



   rx_cache_hint = i;
   *opcode = rxent->opcode;
   return(1);
  }
  if (++i >= RX_CACHE_SIZE)
   i = 0;
 } while (i != rx_cache_hint);


 return(0);
}
