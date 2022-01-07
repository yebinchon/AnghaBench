
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dos_ttystate {scalar_t__ count; int* cbuf; size_t first; } ;


 int CBSIZE ;
 int disable () ;
 int enable () ;

__attribute__((used)) static int
dos_getc (volatile struct dos_ttystate *port)
{
  int c;

  if (port->count == 0)
    return -1;

  c = port->cbuf[port->first];
  disable ();
  port->first = (port->first + 1) & (CBSIZE - 1);
  port->count--;
  enable ();
  return c;
}
