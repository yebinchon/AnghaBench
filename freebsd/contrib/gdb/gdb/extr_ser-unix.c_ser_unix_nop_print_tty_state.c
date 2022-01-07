
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_file {int dummy; } ;
struct serial {int dummy; } ;
typedef int serial_ttystate ;



void
ser_unix_nop_print_tty_state (struct serial *scb,
         serial_ttystate ttystate,
         struct ui_file *stream)
{

  return;
}
