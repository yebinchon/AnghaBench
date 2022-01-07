
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct serial {int fd; } ;
struct dos_ttystate {int fifo; int baudrate; scalar_t__ oflo; scalar_t__ txbusy; scalar_t__ count; scalar_t__ first; TYPE_1__* intrupt; int irq; int refcnt; } ;
struct TYPE_2__ {struct dos_ttystate* port; } ;


 int CFCR_8BITS ;
 int CFCR_DLAB ;
 int ENODEV ;
 int ENOENT ;
 int FIFO_ENABLE ;
 int FIFO_RCV_RST ;
 int FIFO_TRIGGER ;
 int FIFO_XMT_RST ;
 int IER_EMSC ;
 int IER_ERLS ;
 int IER_ERXRDY ;
 int IER_ETXRDY ;
 int IIR_FIFO_MASK ;
 int MCR_DTR ;
 int MCR_IENABLE ;
 int MCR_RTS ;
 int com_cfcr ;
 int com_data ;
 int com_dlbh ;
 int com_dlbl ;
 int com_fifo ;
 int com_ier ;
 int com_iir ;
 int com_lsr ;
 int com_mcr ;
 int com_msr ;
 int disable () ;
 int dos_baudconv (int) ;
 TYPE_1__* dos_hookirq (int ) ;
 int enable () ;
 int errno ;
 int inb (struct dos_ttystate*,int ) ;
 int outb (struct dos_ttystate*,int ,int) ;
 struct dos_ttystate* ports ;
 int sleep (int) ;
 int strlen (char const*) ;
 scalar_t__ strncasecmp (char const*,char*,int) ;

__attribute__((used)) static int
dos_open (struct serial *scb, const char *name)
{
  struct dos_ttystate *port;
  int fd, i;

  if (strncasecmp (name, "/dev/", 5) == 0)
    name += 5;
  else if (strncasecmp (name, "\\dev\\", 5) == 0)
    name += 5;

  if (strlen (name) != 4 || strncasecmp (name, "com", 3) != 0)
    {
      errno = ENOENT;
      return -1;
    }

  if (name[3] < '1' || name[3] > '4')
    {
      errno = ENOENT;
      return -1;
    }





  fd = name[3] - '1';
  port = &ports[fd];
  if (port->refcnt++ > 0)
    {

      scb->fd = fd;
      return 0;
    }


  outb (port, com_cfcr, 0);
  outb (port, com_iir, 0);
  for (i = 0; i < 17; i++)
    {
      if ((inb (port, com_iir) & 0x38) == 0)
 goto ok;
      (void) inb (port, com_data);
    }
  errno = ENODEV;
  return -1;

ok:

  outb (port, com_ier, 0);


  outb (port, com_fifo,
 FIFO_ENABLE | FIFO_RCV_RST | FIFO_XMT_RST | FIFO_TRIGGER);
  sleep (1);
  port->fifo = ((inb (port, com_iir) & IIR_FIFO_MASK) == IIR_FIFO_MASK);


  (void) inb (port, com_lsr);
  (void) inb (port, com_msr);


  outb (port, com_mcr, MCR_IENABLE);


  port->intrupt = dos_hookirq (port->irq);
  if (!port->intrupt)
    {
      outb (port, com_mcr, 0);
      outb (port, com_fifo, 0);
      errno = ENODEV;
      return -1;
    }

  disable ();


  port->intrupt->port = port;
  scb->fd = fd;


  port->first = port->count = 0;
  port->txbusy = 0;
  port->oflo = 0;


  i = dos_baudconv (port->baudrate = 9600);
  outb (port, com_cfcr, CFCR_DLAB);
  outb (port, com_dlbl, i & 0xff);
  outb (port, com_dlbh, i >> 8);
  outb (port, com_cfcr, CFCR_8BITS);


  outb (port, com_ier, IER_ETXRDY | IER_ERXRDY | IER_ERLS | IER_EMSC);


  outb (port, com_mcr, MCR_DTR | MCR_RTS | MCR_IENABLE);

  enable ();

  return 0;
}
