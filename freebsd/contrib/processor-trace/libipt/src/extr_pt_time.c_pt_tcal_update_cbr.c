
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_time_cal {int dummy; } ;
struct pt_packet_cbr {int dummy; } ;
struct pt_config {int dummy; } ;


 int pt_tcal_header_cbr (struct pt_time_cal*,struct pt_packet_cbr const*,struct pt_config const*) ;
 int pt_tcal_init (struct pt_time_cal*) ;

int pt_tcal_update_cbr(struct pt_time_cal *tcal,
        const struct pt_packet_cbr *packet,
        const struct pt_config *config)
{



 pt_tcal_init(tcal);

 return pt_tcal_header_cbr(tcal, packet, config);
}
