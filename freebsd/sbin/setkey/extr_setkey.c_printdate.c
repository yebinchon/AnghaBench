
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct timeval {int tv_sec; scalar_t__ tv_usec; } ;


 int f_tflag ;
 int gettimeofday (struct timeval*,int *) ;
 int perror (char*) ;
 int printf (char*,...) ;
 int thiszone ;

__attribute__((used)) static void
printdate()
{
 struct timeval tp;
 int s;

 if (gettimeofday(&tp, ((void*)0)) == -1) {
  perror("gettimeofday");
  return;
 }

 if (f_tflag == 1) {

  s = (tp.tv_sec + thiszone ) % 86400;
  (void)printf("%02d:%02d:%02d.%06u ",
      s / 3600, (s % 3600) / 60, s % 60, (u_int32_t)tp.tv_usec);
 } else if (f_tflag > 1) {

  (void)printf("%u.%06u ",
      (u_int32_t)tp.tv_sec, (u_int32_t)tp.tv_usec);
 }

 printf("\n");
}
