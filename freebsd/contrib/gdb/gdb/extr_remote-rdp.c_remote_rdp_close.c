
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* shutdown ) (TYPE_1__*) ;} ;


 TYPE_1__* callback ;
 scalar_t__ io ;
 int serial_close (scalar_t__) ;
 int stub1 (TYPE_1__*) ;

__attribute__((used)) static void
remote_rdp_close (int quitting)
{
  callback->shutdown (callback);
  if (io)
    serial_close (io);
  io = 0;
}
