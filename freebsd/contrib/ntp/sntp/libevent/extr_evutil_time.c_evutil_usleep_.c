
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_usec; int tv_sec; } ;
struct timespec {int tv_nsec; int tv_sec; } ;
typedef int DWORD ;


 int Sleep (int ) ;
 long evutil_tv_to_msec_ (struct timeval const*) ;
 int nanosleep (struct timespec*,int *) ;
 int select (int ,int *,int *,int *,struct timeval const*) ;
 int sleep (int ) ;
 int usleep (int) ;

void
evutil_usleep_(const struct timeval *tv)
{
 if (!tv)
  return;
 select(0, ((void*)0), ((void*)0), ((void*)0), tv);

}
