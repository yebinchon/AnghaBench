
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int tv_nsec; scalar_t__ tv_sec; } ;


 scalar_t__ nanosleep (struct timespec*,int *) ;
 int perror (char*) ;

int
main(void)
{
 struct timespec timeout;

 timeout.tv_sec = 0;
 timeout.tv_nsec = 100000000;

 if (nanosleep(&timeout, ((void*)0))) {
  perror("nanosleep");
  return 1;
 }
 return 0;
}
