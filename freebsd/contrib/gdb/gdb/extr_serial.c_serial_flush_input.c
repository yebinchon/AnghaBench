
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct serial {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* flush_input ) (struct serial*) ;} ;


 int stub1 (struct serial*) ;

int
serial_flush_input (struct serial *scb)
{
  return scb->ops->flush_input (scb);
}
