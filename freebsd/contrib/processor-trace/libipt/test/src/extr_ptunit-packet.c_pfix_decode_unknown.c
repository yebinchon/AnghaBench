
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct pt_packet_unknown {struct packet_fixture* priv; } ;
struct pt_config {scalar_t__ begin; scalar_t__ end; } ;
struct packet_fixture {scalar_t__ buffer; int unknown; } ;


 int pte_internal ;

__attribute__((used)) static int pfix_decode_unknown(struct pt_packet_unknown *packet,
          const struct pt_config *config,
          const uint8_t *pos, void *context)
{
 struct packet_fixture *pfix;

 if (!packet || !config)
  return -pte_internal;

 pfix = (struct packet_fixture *) context;
 if (!pfix)
  return -pte_internal;

 if (config->begin != pfix->buffer)
  return -pte_internal;

 if (config->end != pfix->buffer + sizeof(pfix->buffer))
  return -pte_internal;

 if (pos != pfix->buffer)
  return -pte_internal;

 packet->priv = pfix;

 return pfix->unknown;
}
