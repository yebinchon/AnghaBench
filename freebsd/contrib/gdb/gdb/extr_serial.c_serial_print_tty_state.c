
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ui_file {int dummy; } ;
struct serial {TYPE_1__* ops; } ;
typedef int serial_ttystate ;
struct TYPE_2__ {int (* print_tty_state ) (struct serial*,int ,struct ui_file*) ;} ;


 int stub1 (struct serial*,int ,struct ui_file*) ;

void
serial_print_tty_state (struct serial *scb,
   serial_ttystate ttystate,
   struct ui_file *stream)
{
  scb->ops->print_tty_state (scb, ttystate, stream);
}
