
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_t ;


 scalar_t__ leapcorr (scalar_t__*) ;
 int tzset () ;

time_t
posix2time(time_t t)
{
 time_t x;
 time_t y;

 tzset();






 x = t + leapcorr(&t);
 y = x - leapcorr(&x);
 if (y < t) {
  do {
   x++;
   y = x - leapcorr(&x);
  } while (y < t);
  if (t != y)
   return x - 1;
 } else if (y > t) {
  do {
   --x;
   y = x - leapcorr(&x);
  } while (y > t);
  if (t != y)
   return x + 1;
 }
 return x;
}
