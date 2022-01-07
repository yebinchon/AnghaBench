
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serial {int dummy; } ;
typedef int serial_ttystate ;



int
ser_unix_nop_noflush_set_tty_state (struct serial *scb,
        serial_ttystate new_ttystate,
        serial_ttystate old_ttystate)
{
  return 0;
}
