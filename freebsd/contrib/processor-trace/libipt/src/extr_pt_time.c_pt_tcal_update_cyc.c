
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct pt_time_cal {int cyc_tsc; int cyc_mtc; } ;
struct pt_packet_cyc {scalar_t__ value; } ;
struct pt_config {int dummy; } ;


 int pte_internal ;

int pt_tcal_update_cyc(struct pt_time_cal *tcal,
        const struct pt_packet_cyc *packet,
        const struct pt_config *config)
{
 uint64_t cyc;

 (void) config;

 if (!tcal || !packet)
  return -pte_internal;

 cyc = packet->value;
 tcal->cyc_mtc += cyc;
 tcal->cyc_tsc += cyc;

 return 0;
}
