
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct pt_packet_mode_exec {int csl; int csd; } ;


 int pt_mob_exec_csd ;
 int pt_mob_exec_csl ;
 int pte_internal ;
 int ptps_mode ;

__attribute__((used)) static int pt_pkt_read_mode_exec(struct pt_packet_mode_exec *packet,
     uint8_t mode)
{
 if (!packet)
  return -pte_internal;

 packet->csl = (mode & pt_mob_exec_csl) != 0;
 packet->csd = (mode & pt_mob_exec_csd) != 0;

 return ptps_mode;
}
