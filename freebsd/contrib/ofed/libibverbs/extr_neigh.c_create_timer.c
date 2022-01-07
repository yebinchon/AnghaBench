
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int tv_sec; int tv_nsec; } ;
struct itimerspec {struct timespec it_interval; struct timespec it_value; } ;
struct get_neigh_handler {int timeout; } ;


 int CLOCK_MONOTONIC ;
 int NUM_OF_TRIES ;
 int TFD_CLOEXEC ;
 int TFD_NONBLOCK ;
 int bzero (struct timespec*,int) ;
 int close (int) ;
 int timerfd_create (int ,int) ;
 scalar_t__ timerfd_settime (int,int ,struct itimerspec*,int *) ;

__attribute__((used)) static int create_timer(struct get_neigh_handler *neigh_handler)
{
 int user_timeout = neigh_handler->timeout/NUM_OF_TRIES;
 struct timespec timeout = {
  .tv_sec = user_timeout / 1000,
  .tv_nsec = (user_timeout % 1000) * 1000000
 };
 struct itimerspec timer_time = {.it_value = timeout};
 int timer_fd;

 timer_fd = timerfd_create(CLOCK_MONOTONIC, TFD_NONBLOCK | TFD_CLOEXEC);
 if (timer_fd == -1)
  return timer_fd;

 if (neigh_handler->timeout) {
  if (NUM_OF_TRIES <= 1)
   bzero(&timer_time.it_interval,
         sizeof(timer_time.it_interval));
  else
   timer_time.it_interval = timeout;
  if (timerfd_settime(timer_fd, 0, &timer_time, ((void*)0))) {
   close(timer_fd);
   return -1;
  }
 }

 return timer_fd;
}
