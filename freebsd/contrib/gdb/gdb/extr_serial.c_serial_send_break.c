
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct serial {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* send_break ) (struct serial*) ;} ;


 int SERIAL_BREAK ;
 int serial_logchar (int *,char,int ,int ) ;
 int * serial_logfp ;
 int stub1 (struct serial*) ;

int
serial_send_break (struct serial *scb)
{
  if (serial_logfp != ((void*)0))
    serial_logchar (serial_logfp, 'w', SERIAL_BREAK, 0);

  return (scb->ops->send_break (scb));
}
