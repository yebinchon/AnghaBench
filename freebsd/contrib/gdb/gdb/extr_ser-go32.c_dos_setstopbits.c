
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serial {size_t fd; } ;
struct dos_ttystate {int dummy; } ;


 unsigned char CFCR_STOPB ;



 int com_cfcr ;
 int disable () ;
 int enable () ;
 unsigned char inb (struct dos_ttystate*,int ) ;
 int outb (struct dos_ttystate*,int ,unsigned char) ;
 struct dos_ttystate* ports ;

__attribute__((used)) static int
dos_setstopbits (struct serial *scb, int num)
{
  struct dos_ttystate *port = &ports[scb->fd];
  unsigned char cfcr;

  disable ();
  cfcr = inb (port, com_cfcr);

  switch (num)
    {
    case 129:
      outb (port, com_cfcr, cfcr & ~CFCR_STOPB);
      break;
    case 130:
    case 128:
      outb (port, com_cfcr, cfcr | CFCR_STOPB);
      break;
    default:
      enable ();
      return 1;
    }
  enable ();

  return 0;
}
