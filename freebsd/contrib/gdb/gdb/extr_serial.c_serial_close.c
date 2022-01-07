
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serial {int dummy; } ;


 int do_serial_close (struct serial*,int) ;

void
serial_close (struct serial *scb)
{
  do_serial_close (scb, 1);
}
