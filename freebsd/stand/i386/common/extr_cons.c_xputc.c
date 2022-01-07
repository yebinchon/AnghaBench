
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IO_KEYBOARD ;
 int IO_SERIAL ;
 int ioctrl ;
 int putc (int) ;
 int sio_putc (int) ;

void
xputc(int c)
{

 if (ioctrl & IO_KEYBOARD)
  putc(c);
 if (ioctrl & IO_SERIAL)
  sio_putc(c);
}
