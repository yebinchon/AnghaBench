
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct serial {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* go_raw ) (struct serial*) ;} ;


 int stub1 (struct serial*) ;

void
serial_raw (struct serial *scb)
{
  scb->ops->go_raw (scb);
}
