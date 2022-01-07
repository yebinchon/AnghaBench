
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dos_ttystate {int count; int* cbuf; int first; } ;


 int CBSIZE ;

__attribute__((used)) static int
dos_putc (int c, struct dos_ttystate *port)
{
  if (port->count >= CBSIZE - 1)
    return -1;
  port->cbuf[(port->first + port->count) & (CBSIZE - 1)] = c;
  port->count++;
  return 0;
}
