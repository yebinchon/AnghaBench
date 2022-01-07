
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct serial {TYPE_1__* ops; } ;
typedef int serial_ttystate ;
struct TYPE_2__ {int (* get_tty_state ) (struct serial*) ;} ;


 int stub1 (struct serial*) ;

serial_ttystate
serial_get_tty_state (struct serial *scb)
{
  return scb->ops->get_tty_state (scb);
}
