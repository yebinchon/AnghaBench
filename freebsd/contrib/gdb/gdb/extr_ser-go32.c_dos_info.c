
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dos_ttystate {long base; char* irq; int oflo; int perr; int ferr; int baudrate; scalar_t__ fifo; scalar_t__ intrupt; } ;


 int NCNT ;
 long* cntnames ;
 char** cnts ;
 int intrcnt ;
 struct dos_ttystate* ports ;
 int printf_filtered (char*,...) ;

__attribute__((used)) static void
dos_info (char *arg, int from_tty)
{
  struct dos_ttystate *port;




  for (port = ports; port < &ports[4]; port++)
    {
      if (port->baudrate == 0)
 continue;
      printf_filtered ("Port:\tCOM%ld (%sactive)\n", (long)(port - ports) + 1,
         port->intrupt ? "" : "not ");
      printf_filtered ("Addr:\t0x%03x (irq %d)\n", port->base, port->irq);
      printf_filtered ("16550:\t%s\n", port->fifo ? "yes" : "no");
      printf_filtered ("Speed:\t%d baud\n", port->baudrate);
      printf_filtered ("Errs:\tframing %d parity %d overflow %d\n\n",
         port->ferr, port->perr, port->oflo);
    }







}
