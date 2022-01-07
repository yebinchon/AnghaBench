
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_sec; int tv_usec; } ;



__attribute__((used)) static void
timestwo(struct timeval* v)
{

 if(v->tv_sec == 0 && v->tv_usec == 0) {
  v->tv_usec = 1;
  return;
 }
 v->tv_sec *= 2;
 v->tv_usec *= 2;
 if(v->tv_usec == 1024*1024) {

  v->tv_sec = 1;
  v->tv_usec = 0;
 }

}
