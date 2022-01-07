
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serial {size_t fd; } ;
struct dos_ttystate {int baudrate; } ;


 unsigned char CFCR_DLAB ;
 int EINVAL ;
 int com_cfcr ;
 int com_dlbh ;
 int com_dlbl ;
 int disable () ;
 int dos_baudconv (int) ;
 int enable () ;
 int errno ;
 int fprintf_unfiltered (int ,char*,int) ;
 int gdb_stderr ;
 unsigned char inb (struct dos_ttystate*,int ) ;
 int outb (struct dos_ttystate*,int ,unsigned char) ;
 struct dos_ttystate* ports ;

__attribute__((used)) static int
dos_setbaudrate (struct serial *scb, int rate)
{
  struct dos_ttystate *port = &ports[scb->fd];

  if (port->baudrate != rate)
    {
      int x;
      unsigned char cfcr;

      x = dos_baudconv (rate);
      if (x <= 0)
 {
   fprintf_unfiltered (gdb_stderr, "%d: impossible baudrate\n", rate);
   errno = EINVAL;
   return -1;
 }

      disable ();
      cfcr = inb (port, com_cfcr);

      outb (port, com_cfcr, CFCR_DLAB);
      outb (port, com_dlbl, x & 0xff);
      outb (port, com_dlbh, x >> 8);
      outb (port, com_cfcr, cfcr);
      port->baudrate = rate;
      enable ();
    }

  return 0;
}
