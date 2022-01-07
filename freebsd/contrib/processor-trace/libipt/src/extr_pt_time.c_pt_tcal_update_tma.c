
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_time_cal {int dummy; } ;
struct pt_packet_tma {int dummy; } ;
struct pt_config {int dummy; } ;



int pt_tcal_update_tma(struct pt_time_cal *tcal,
        const struct pt_packet_tma *packet,
        const struct pt_config *config)
{
 (void) tcal;
 (void) packet;
 (void) config;


 return 0;
}
