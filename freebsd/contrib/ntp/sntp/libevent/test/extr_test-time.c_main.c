
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_usec; scalar_t__ tv_sec; } ;
struct event {int dummy; } ;
typedef int WSADATA ;
typedef int WORD ;


 int MAKEWORD (int,int) ;
 int NEVENT ;
 int WSAStartup (int ,int *) ;
 int assert (int ) ;
 int called ;
 int ** ev ;
 int event_dispatch () ;
 int event_init () ;
 int evtimer_add (int *,struct timeval*) ;
 int evtimer_set (int *,int ,int *) ;
 int evutil_weakrand_seed_ (int *,int ) ;
 int * malloc (int) ;
 int printf (char*,int,int) ;
 int rand_int (int) ;
 int time_cb ;
 int weakrand_state ;

int
main(int argc, char **argv)
{
 struct timeval tv;
 int i;
 evutil_weakrand_seed_(&weakrand_state, 0);


 event_init();

 for (i = 0; i < NEVENT; i++) {
  ev[i] = malloc(sizeof(struct event));
  assert(ev[i] != ((void*)0));


  evtimer_set(ev[i], time_cb, ev[i]);
  tv.tv_sec = 0;
  tv.tv_usec = rand_int(50000);
  evtimer_add(ev[i], &tv);
 }

 event_dispatch();


 printf("%d, %d\n", called, NEVENT);
 return (called < NEVENT);
}
