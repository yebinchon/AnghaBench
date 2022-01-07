
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
struct TYPE_7__ {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
struct itimerval {TYPE_1__ it_value; TYPE_2__ it_interval; } ;
struct TYPE_8__ {struct TYPE_8__* ev_link; } ;
typedef TYPE_3__ SM_EVENT ;


 int ENTER_CRITICAL () ;
 int ITIMER_REAL ;
 int LEAVE_CRITICAL () ;
 int SIGALRM ;
 TYPE_3__* SmEventQueue ;
 TYPE_3__* SmFreeEventList ;
 int alarm (int ) ;
 int setitimer (int ,struct itimerval*,int *) ;
 int sm_blocksignal (int ) ;
 int sm_releasesignal (int ) ;

void
sm_clear_events()
{
 register SM_EVENT *ev;



 int wasblocked;
 (void) alarm(0);


 if (SmEventQueue == ((void*)0))
  return;

 wasblocked = sm_blocksignal(SIGALRM);


 for (ev = SmEventQueue; ev->ev_link != ((void*)0); ev = ev->ev_link)
  continue;

 ENTER_CRITICAL();
 ev->ev_link = SmFreeEventList;
 SmFreeEventList = SmEventQueue;
 SmEventQueue = ((void*)0);
 LEAVE_CRITICAL();


 if (wasblocked == 0)
  (void) sm_releasesignal(SIGALRM);
}
