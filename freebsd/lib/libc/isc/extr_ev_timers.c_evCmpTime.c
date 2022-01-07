
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {long tv_sec; long tv_nsec; } ;



int
evCmpTime(struct timespec a, struct timespec b) {
 long x = a.tv_sec - b.tv_sec;

 if (x == 0L)
  x = a.tv_nsec - b.tv_nsec;
 return (x < 0L ? (-1) : x > 0L ? (1) : (0));
}
