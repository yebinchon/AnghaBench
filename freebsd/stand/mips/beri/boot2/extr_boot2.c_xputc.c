
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IO_KEYBOARD ;
 int IO_SERIAL ;
 int beri_putc (int) ;
 int ioctrl ;
 int sio_putc (int) ;

__attribute__((used)) static int
xputc(int c)
{
    if (ioctrl & IO_KEYBOARD)
 beri_putc(c);




    return c;
}
