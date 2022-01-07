
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int pending_terminate; int signal_count; TYPE_1__* signals; int signaled; } ;
struct TYPE_3__ {int sig; int signaled; } ;


 int SIGALRM ;
 int SIGINT ;
 int SIGTERM ;
 int alarm (int) ;
 TYPE_2__ eloop ;
 int eloop_handle_alarm ;
 int signal (int ,int ) ;

__attribute__((used)) static void eloop_handle_signal(int sig)
{
 int i;


 if ((sig == SIGINT || sig == SIGTERM) && !eloop.pending_terminate) {


  eloop.pending_terminate = 1;
  signal(SIGALRM, eloop_handle_alarm);
  alarm(2);
 }


 eloop.signaled++;
 for (i = 0; i < eloop.signal_count; i++) {
  if (eloop.signals[i].sig == sig) {
   eloop.signals[i].signaled++;
   break;
  }
 }
}
