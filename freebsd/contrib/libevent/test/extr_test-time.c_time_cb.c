
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_usec; scalar_t__ tv_sec; } ;
typedef int evutil_socket_t ;


 int NEVENT ;
 int called ;
 int * ev ;
 int evtimer_add (int ,struct timeval*) ;
 int evtimer_del (int ) ;
 void* rand_int (int) ;

__attribute__((used)) static void
time_cb(evutil_socket_t fd, short event, void *arg)
{
 struct timeval tv;
 int i, j;

 called++;

 if (called < 10*NEVENT) {
  for (i = 0; i < 10; i++) {
   j = rand_int(NEVENT);
   tv.tv_sec = 0;
   tv.tv_usec = rand_int(50000);
   if (tv.tv_usec % 2 || called < NEVENT)
    evtimer_add(ev[j], &tv);
   else
    evtimer_del(ev[j]);
  }
 }
}
