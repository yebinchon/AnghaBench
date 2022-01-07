
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct auth_xfer {int serial; scalar_t__ zone_expired; int have_zone; } ;


 scalar_t__ compare_serial (int ,int ) ;

__attribute__((used)) static int
xfr_serial_means_update(struct auth_xfer* xfr, uint32_t serial)
{
 if(!xfr->have_zone)
  return 1;
 if(xfr->zone_expired)
  return 1;

 if(compare_serial(xfr->serial, serial) < 0)
  return 1;

 return 0;
}
