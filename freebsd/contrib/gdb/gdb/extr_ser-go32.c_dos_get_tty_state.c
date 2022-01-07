
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serial {size_t fd; } ;
struct dos_ttystate {scalar_t__ refcnt; } ;
typedef int * serial_ttystate ;


 int isatty (int) ;
 struct dos_ttystate* ports ;
 scalar_t__ xmalloc (int) ;

__attribute__((used)) static serial_ttystate
dos_get_tty_state (struct serial *scb)
{
  struct dos_ttystate *port = &ports[scb->fd];
  struct dos_ttystate *state;


  if (port->refcnt <= 0)
    {






      if (scb->fd >= 3 || !isatty (scb->fd))
 return ((void*)0);
    }

  state = (struct dos_ttystate *) xmalloc (sizeof *state);
  *state = *port;
  return (serial_ttystate) state;
}
