
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct pt_time {int have_cbr; scalar_t__ cbr; } ;
struct pt_packet_cbr {scalar_t__ ratio; } ;
struct pt_config {int dummy; } ;


 int pte_bad_packet ;
 int pte_internal ;

int pt_time_update_cbr(struct pt_time *time,
         const struct pt_packet_cbr *packet,
         const struct pt_config *config)
{
 uint8_t cbr;

 (void) config;

 if (!time || !packet)
  return -pte_internal;

 cbr = packet->ratio;
 if (!cbr)
  return -pte_bad_packet;

 time->have_cbr = 1;
 time->cbr = cbr;

 return 0;
}
