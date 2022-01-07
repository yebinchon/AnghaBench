
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int time_t ;
struct TYPE_2__ {int tm_hour; } ;


 int HOUR ;
 TYPE_1__* localtime (int*) ;

__attribute__((used)) static time_t
DSTcorrect(time_t Start, time_t Future)
{
 time_t StartDay;
 time_t FutureDay;

 StartDay = (localtime(&Start)->tm_hour + 1) % 24;
 FutureDay = (localtime(&Future)->tm_hour + 1) % 24;
 return (Future - Start) + (StartDay - FutureDay) * HOUR;
}
