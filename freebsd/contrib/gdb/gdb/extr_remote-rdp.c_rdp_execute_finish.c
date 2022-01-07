
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rdi_stopped_status; } ;


 int QUIT ;



 int SERIAL_TIMEOUT ;
 TYPE_1__ ds ;
 int handle_swi () ;
 int io ;
 int printf_filtered (char*,...) ;
 int send_rdp (char*,int *) ;
 int serial_readchar (int ,int) ;

__attribute__((used)) static void
rdp_execute_finish (void)
{
  int running = 1;

  while (running)
    {
      int res;
      res = serial_readchar (io, 1);
      while (res == SERIAL_TIMEOUT)
 {
   QUIT;
   printf_filtered ("Waiting for target..\n");
   res = serial_readchar (io, 1);
 }

      switch (res)
 {
 case 129:
   handle_swi ();
   break;
 case 128:
   send_rdp ("B", &ds.rdi_stopped_status);
   running = 0;
   break;
 case 130:
   printf_filtered ("Target reset\n");
   running = 0;
   break;
 default:
   printf_filtered ("Ignoring %x\n", res);
   break;
 }
    }
}
