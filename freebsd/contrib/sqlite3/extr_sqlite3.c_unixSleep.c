
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int tv_sec; int tv_nsec; } ;
typedef int sqlite3_vfs ;


 int UNUSED_PARAMETER (int *) ;
 int nanosleep (struct timespec*,int *) ;
 int sleep (int) ;
 int usleep (int) ;

__attribute__((used)) static int unixSleep(sqlite3_vfs *NotUsed, int microseconds){
  int seconds = (microseconds+999999)/1000000;
  sleep(seconds);
  UNUSED_PARAMETER(NotUsed);
  return seconds*1000000;

}
