
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct tm {int tm_isdst; } ;


 int WRONG ;
 int time2 (struct tm*,int*,int) ;

__attribute__((used)) static time_t
time1(
 struct tm * tmp
 )
{
 register time_t t;
 int okay;

 if (tmp->tm_isdst > 1)
  tmp->tm_isdst = 1;
 t = time2(tmp, &okay, 1);
 if (okay || tmp->tm_isdst < 0)
  return t;

 return WRONG;
}
