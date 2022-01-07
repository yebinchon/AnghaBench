
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;


 scalar_t__ GET_IB_USERLAND_TID (scalar_t__) ;
 int getpid () ;
 scalar_t__ random () ;
 int srandom (int) ;
 scalar_t__ time (int ) ;

uint64_t mad_trid(void)
{
 static uint64_t trid;
 uint64_t next;

 if (!trid) {
  srandom((int)time(0) * getpid());
  trid = random();
 }
 next = ++trid;
 next = GET_IB_USERLAND_TID(next);
 return next;
}
