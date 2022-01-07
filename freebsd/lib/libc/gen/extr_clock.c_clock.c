
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rusage {int ru_stime; int ru_utime; } ;
typedef int clock_t ;


 scalar_t__ CONVTCK (int ) ;
 int RUSAGE_SELF ;
 scalar_t__ getrusage (int ,struct rusage*) ;

clock_t
clock(void)
{
 struct rusage ru;

 if (getrusage(RUSAGE_SELF, &ru))
  return ((clock_t) -1);
 return((clock_t)((CONVTCK(ru.ru_utime) + CONVTCK(ru.ru_stime))));
}
