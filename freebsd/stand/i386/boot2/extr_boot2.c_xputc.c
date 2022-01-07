
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ DO_KBD ;
 scalar_t__ DO_SIO ;
 int putc (int) ;
 int sio_putc (int) ;

__attribute__((used)) static int
xputc(int c)
{

 if (DO_KBD)
  putc(c);
 if (DO_SIO)
  sio_putc(c);
 return (c);
}
