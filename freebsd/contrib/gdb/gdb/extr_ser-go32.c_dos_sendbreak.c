
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serial {size_t fd; } ;
struct dos_ttystate {int dummy; } ;


 unsigned char CFCR_SBREAK ;
 int RAWHZ ;
 int com_cfcr ;
 unsigned char inb (struct dos_ttystate volatile*,int ) ;
 int outb (struct dos_ttystate volatile*,int ,unsigned char) ;
 struct dos_ttystate* ports ;
 long rawclock () ;

__attribute__((used)) static int
dos_sendbreak (struct serial *scb)
{
  volatile struct dos_ttystate *port = &ports[scb->fd];
  unsigned char cfcr;
  long then;

  cfcr = inb (port, com_cfcr);
  outb (port, com_cfcr, cfcr | CFCR_SBREAK);


  then = rawclock () + RAWHZ / 4;
  while ((rawclock () - then) < 0)
    continue;

  outb (port, com_cfcr, cfcr);
  return 0;
}
