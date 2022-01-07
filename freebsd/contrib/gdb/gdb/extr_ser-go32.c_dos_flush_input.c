
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serial {size_t fd; } ;
struct dos_ttystate {scalar_t__ fifo; scalar_t__ count; scalar_t__ first; } ;


 int FIFO_ENABLE ;
 int FIFO_RCV_RST ;
 int FIFO_TRIGGER ;
 int com_fifo ;
 int disable () ;
 int enable () ;
 int outb (struct dos_ttystate*,int ,int) ;
 struct dos_ttystate* ports ;

__attribute__((used)) static int
dos_flush_input (struct serial *scb)
{
  struct dos_ttystate *port = &ports[scb->fd];
  disable ();
  port->first = port->count = 0;
  if (port->fifo)
    outb (port, com_fifo, FIFO_ENABLE | FIFO_RCV_RST | FIFO_TRIGGER);
  enable ();
  return 0;
}
