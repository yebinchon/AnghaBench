
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int user_data; int sig; int (* handler ) (int ,int ) ;scalar_t__ signaled; } ;
struct TYPE_6__ {scalar_t__ signaled; int signal_count; TYPE_2__ term_signal; TYPE_1__* signals; scalar_t__ pending_terminate; } ;
struct TYPE_4__ {int user_data; int sig; int (* handler ) (int ,int ) ;scalar_t__ signaled; } ;


 TYPE_3__ eloop ;
 int stub1 (int ,int ) ;
 int stub2 (int ,int ) ;

__attribute__((used)) static void eloop_process_pending_signals(void)
{
 int i;

 if (eloop.signaled == 0)
  return;
 eloop.signaled = 0;

 if (eloop.pending_terminate) {
  eloop.pending_terminate = 0;
 }

 for (i = 0; i < eloop.signal_count; i++) {
  if (eloop.signals[i].signaled) {
   eloop.signals[i].signaled = 0;
   eloop.signals[i].handler(eloop.signals[i].sig,
       eloop.signals[i].user_data);
  }
 }

 if (eloop.term_signal.signaled) {
  eloop.term_signal.signaled = 0;
  eloop.term_signal.handler(eloop.term_signal.sig,
       eloop.term_signal.user_data);
 }
}
