
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uint32_t ;
struct auth_xfer {int notify_received; int notify_has_serial; void* notify_serial; } ;


 scalar_t__ compare_serial (void*,void*) ;

__attribute__((used)) static void
xfr_note_notify_serial(struct auth_xfer* xfr, int has_serial, uint32_t serial)
{
 if(xfr->notify_received && xfr->notify_has_serial && has_serial) {

  if(compare_serial(xfr->notify_serial, serial) < 0)
   xfr->notify_serial = serial;
 } else if(xfr->notify_received && xfr->notify_has_serial &&
  !has_serial) {

  xfr->notify_has_serial = 0;
  xfr->notify_serial = 0;
 } else if(xfr->notify_received && !xfr->notify_has_serial) {



 } else {
  xfr->notify_received = 1;
  xfr->notify_has_serial = has_serial;
  xfr->notify_serial = serial;
 }
}
