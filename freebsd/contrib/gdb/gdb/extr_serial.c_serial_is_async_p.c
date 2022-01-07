
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct serial {int * async_handler; TYPE_1__* ops; } ;
struct TYPE_2__ {int * async; } ;



int
serial_is_async_p (struct serial *scb)
{
  return (scb->ops->async != ((void*)0)) && (scb->async_handler != ((void*)0));
}
