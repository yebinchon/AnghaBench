
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int * device; } ;


 int callout_process (int) ;
 int delay (int) ;
 int hz ;
 TYPE_1__ umass_uaa ;
 int usb_idle () ;
 int usb_init () ;
 int usb_needs_explore_all () ;

__attribute__((used)) static int
umass_disk_init(void)
{
 uint32_t time;

 usb_init();
 usb_needs_explore_all();


 for (time = 0; time < (8 * hz); time++) {
  usb_idle();
  delay(1000000 / hz);
  time++;
  callout_process(1);
  if (umass_uaa.device != ((void*)0))
   return (0);
 }
 return (0);
}
