
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rusage {int ru_stime; int ru_utime; } ;
typedef double sqlite3_int64 ;
struct TYPE_2__ {int ru_stime; int ru_utime; } ;


 int RUSAGE_SELF ;
 scalar_t__ enableTimer ;
 int getrusage (int ,struct rusage*) ;
 double iBegin ;
 int printf (char*,double,double,double) ;
 TYPE_1__ sBegin ;
 double timeDiff (int *,int *) ;
 double timeOfDay () ;

__attribute__((used)) static void endTimer(void){
  if( enableTimer ){
    sqlite3_int64 iEnd = timeOfDay();
    struct rusage sEnd;
    getrusage(RUSAGE_SELF, &sEnd);
    printf("Run Time: real %.3f user %f sys %f\n",
       (iEnd - iBegin)*0.001,
       timeDiff(&sBegin.ru_utime, &sEnd.ru_utime),
       timeDiff(&sBegin.ru_stime, &sEnd.ru_stime));
  }
}
