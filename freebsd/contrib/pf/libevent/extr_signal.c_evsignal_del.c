
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigaction {int dummy; } ;
struct event {int dummy; } ;


 int EVENT_SIGNAL (struct event*) ;
 scalar_t__ SIG_DFL ;
 int sigaction (int,struct sigaction*,int *) ;

int
evsignal_del(struct event *ev)
{
 int evsignal;

 evsignal = EVENT_SIGNAL(ev);

 return (sigaction(EVENT_SIGNAL(ev),(struct sigaction *)SIG_DFL, ((void*)0)));
}
