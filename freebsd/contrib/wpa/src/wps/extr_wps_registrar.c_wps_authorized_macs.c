
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wps_registrar {int * authorized_macs_union; } ;


 size_t WPS_MAX_AUTHORIZED_MACS ;
 scalar_t__ is_zero_ether_addr (int ) ;

const u8 * wps_authorized_macs(struct wps_registrar *reg, size_t *count)
{
 *count = 0;

 while (*count < WPS_MAX_AUTHORIZED_MACS) {
  if (is_zero_ether_addr(reg->authorized_macs_union[*count]))
   break;
  (*count)++;
 }

 return (const u8 *) reg->authorized_macs_union;
}
