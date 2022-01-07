
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int callout_process (int) ;
 int hz ;
 int usb_idle () ;
 int usb_init () ;
 int usb_uninit () ;
 int usleep (int) ;

int
main(int argc, char **argv)
{
 uint32_t time;

 usb_init();

 time = 0;

 while (1) {

  usb_idle();

  usleep(1000);

  if (++time >= (1000 / hz)) {
   time = 0;
   callout_process(1);
  }
 }

 usb_uninit();

 return (0);
}
