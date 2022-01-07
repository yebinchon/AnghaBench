
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_time_cal {unsigned long long cyc_tsc; int tsc; } ;
struct pt_packet_tsc {int tsc; } ;
struct pt_config {int dummy; } ;


 int pte_internal ;

int pt_tcal_update_tsc(struct pt_time_cal *tcal,
        const struct pt_packet_tsc *packet,
        const struct pt_config *config)
{
 (void) config;

 if (!tcal || !packet)
  return -pte_internal;





 tcal->tsc = packet->tsc;
 tcal->cyc_tsc = 0ull;

 return 0;
}
