
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RUSAGE_SELF ;
 scalar_t__ enableTimer ;
 int getrusage (int ,int *) ;
 int iBegin ;
 int sBegin ;
 int timeOfDay () ;

__attribute__((used)) static void beginTimer(void){
  if( enableTimer ){
    getrusage(RUSAGE_SELF, &sBegin);
    iBegin = timeOfDay();
  }
}
