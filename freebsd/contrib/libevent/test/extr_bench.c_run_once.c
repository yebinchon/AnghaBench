
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int dummy; } ;
typedef int evutil_socket_t ;
typedef scalar_t__ ev_intptr_t ;


 int EVLOOP_NONBLOCK ;
 int EVLOOP_ONCE ;
 int EV_PERSIST ;
 int EV_READ ;
 int count ;
 int event_add (int *,int *) ;
 int event_del (int *) ;
 scalar_t__ event_initialized (int *) ;
 int event_loop (int) ;
 int event_set (int *,int,int,int ,void*) ;
 int * events ;
 int evutil_gettimeofday (struct timeval*,int *) ;
 int evutil_timersub (struct timeval*,struct timeval*,struct timeval*) ;
 int fired ;
 int fprintf (int ,char*,int,int) ;
 long num_active ;
 long num_pipes ;
 int num_writes ;
 int* pipes ;
 int read_cb ;
 int send (int,char*,int,int ) ;
 int stderr ;
 int writes ;

__attribute__((used)) static struct timeval *
run_once(void)
{
 evutil_socket_t *cp, space;
 long i;
 static struct timeval ts, te;

 for (cp = pipes, i = 0; i < num_pipes; i++, cp += 2) {
  if (event_initialized(&events[i]))
   event_del(&events[i]);
  event_set(&events[i], cp[0], EV_READ | EV_PERSIST, read_cb, (void *)(ev_intptr_t) i);
  event_add(&events[i], ((void*)0));
 }

 event_loop(EVLOOP_ONCE | EVLOOP_NONBLOCK);

 fired = 0;
 space = num_pipes / num_active;
 space = space * 2;
 for (i = 0; i < num_active; i++, fired++)
  (void) send(pipes[i * space + 1], "e", 1, 0);

 count = 0;
 writes = num_writes;
 { int xcount = 0;
 evutil_gettimeofday(&ts, ((void*)0));
 do {
  event_loop(EVLOOP_ONCE | EVLOOP_NONBLOCK);
  xcount++;
 } while (count != fired);
 evutil_gettimeofday(&te, ((void*)0));

 if (xcount != count) fprintf(stderr, "Xcount: %d, Rcount: %d\n", xcount, count);
 }

 evutil_timersub(&te, &ts, &te);

 return (&te);
}
