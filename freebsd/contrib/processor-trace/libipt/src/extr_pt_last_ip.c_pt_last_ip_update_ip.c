
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_packet_ip {int ipc; int ip; } ;
struct pt_last_ip {int suppressed; int ip; int have_ip; } ;
struct pt_config {int dummy; } ;
 int pte_bad_packet ;
 int pte_internal ;
 int sext (int,int) ;

int pt_last_ip_update_ip(struct pt_last_ip *last_ip,
    const struct pt_packet_ip *packet,
    const struct pt_config *config)
{
 (void) config;

 if (!last_ip || !packet)
  return -pte_internal;

 switch (packet->ipc) {
 case 131:
  last_ip->suppressed = 1;
  return 0;

 case 132:
  last_ip->ip = sext(packet->ip, 48);
  last_ip->have_ip = 1;
  last_ip->suppressed = 0;
  return 0;

 case 130:
  last_ip->ip = (last_ip->ip & ~0xffffull)
   | (packet->ip & 0xffffull);
  last_ip->have_ip = 1;
  last_ip->suppressed = 0;
  return 0;

 case 129:
  last_ip->ip = (last_ip->ip & ~0xffffffffull)
   | (packet->ip & 0xffffffffull);
  last_ip->have_ip = 1;
  last_ip->suppressed = 0;
  return 0;

 case 128:
  last_ip->ip = (last_ip->ip & ~0xffffffffffffull)
   | (packet->ip & 0xffffffffffffull);
  last_ip->have_ip = 1;
  last_ip->suppressed = 0;
  return 0;

 case 133:
  last_ip->ip = packet->ip;
  last_ip->have_ip = 1;
  last_ip->suppressed = 0;
  return 0;
 }

 return -pte_bad_packet;
}
