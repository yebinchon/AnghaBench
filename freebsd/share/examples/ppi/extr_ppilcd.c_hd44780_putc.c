
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HD_DATA ;
 int hd44780_output (int ,int) ;
 int usleep (int) ;

__attribute__((used)) static void
hd44780_putc(int c)
{
    hd44780_output(HD_DATA, c);
    usleep(40);
}
