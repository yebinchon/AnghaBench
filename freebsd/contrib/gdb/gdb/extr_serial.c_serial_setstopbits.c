
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct serial {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* setstopbits ) (struct serial*,int) ;} ;


 int stub1 (struct serial*,int) ;

int
serial_setstopbits (struct serial *scb, int num)
{
  return scb->ops->setstopbits (scb, num);
}
