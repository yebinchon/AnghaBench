
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ signaled; int signal_count; TYPE_1__* signals; scalar_t__ pending_terminate; } ;
struct TYPE_3__ {int user_data; int sig; int (* handler ) (int ,int ) ;scalar_t__ signaled; } ;


 int alarm (int ) ;
 TYPE_2__ eloop ;
 int stub1 (int ,int ) ;

__attribute__((used)) static void eloop_process_pending_signals(void)
{
 int i;

 if (eloop.signaled == 0)
  return;
 eloop.signaled = 0;

 if (eloop.pending_terminate) {

  alarm(0);

  eloop.pending_terminate = 0;
 }

 for (i = 0; i < eloop.signal_count; i++) {
  if (eloop.signals[i].signaled) {
   eloop.signals[i].signaled = 0;
   eloop.signals[i].handler(eloop.signals[i].sig,
       eloop.signals[i].user_data);
  }
 }
}
