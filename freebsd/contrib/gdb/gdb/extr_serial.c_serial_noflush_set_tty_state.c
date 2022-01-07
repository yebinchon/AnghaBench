
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct serial {TYPE_1__* ops; } ;
typedef int serial_ttystate ;
struct TYPE_2__ {int (* noflush_set_tty_state ) (struct serial*,int ,int ) ;} ;


 int stub1 (struct serial*,int ,int ) ;

int
serial_noflush_set_tty_state (struct serial *scb,
         serial_ttystate new_ttystate,
         serial_ttystate old_ttystate)
{
  return scb->ops->noflush_set_tty_state (scb, new_ttystate, old_ttystate);
}
