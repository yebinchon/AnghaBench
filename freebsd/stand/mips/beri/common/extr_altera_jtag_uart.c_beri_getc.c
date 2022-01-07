
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int buffer_data ;
 scalar_t__ buffer_valid ;
 int uart_readable () ;

int
beri_getc(void)
{

 while (!(uart_readable()));
 buffer_valid = 0;
 return (buffer_data);
}
