
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {unsigned int tv_sec; unsigned int tv_nsec; } ;


 int nanosleep (struct timespec*,int *) ;

int usleep(unsigned int useconds)
{
 struct timespec ts;

 ts.tv_sec = useconds / 1000000;
 ts.tv_nsec = (useconds % 1000000) * 1000;
 return nanosleep(&ts, ((void*)0));
}
