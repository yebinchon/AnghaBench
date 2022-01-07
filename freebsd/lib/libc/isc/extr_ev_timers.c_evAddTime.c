
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {scalar_t__ tv_nsec; scalar_t__ tv_sec; } ;


 scalar_t__ BILLION ;

struct timespec
evAddTime(struct timespec addend1, struct timespec addend2) {
 struct timespec x;

 x.tv_sec = addend1.tv_sec + addend2.tv_sec;
 x.tv_nsec = addend1.tv_nsec + addend2.tv_nsec;
 if (x.tv_nsec >= BILLION) {
  x.tv_sec++;
  x.tv_nsec -= BILLION;
 }
 return (x);
}
