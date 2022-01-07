
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_usec; scalar_t__ tv_sec; } ;
typedef scalar_t__ DWORD ;


 int EVLOCK_LOCK (int ,int ) ;
 int EVLOCK_UNLOCK (int ,int ) ;
 int EVTHREAD_COND_WAIT_TIMED (int ,int ,struct timeval*) ;
 scalar_t__ GetTickCount () ;
 int count ;
 int count_cond ;
 int count_lock ;

__attribute__((used)) static int
count_wait_for(int i, int ms)
{
 struct timeval tv;
 DWORD elapsed;
 int rv = -1;

 EVLOCK_LOCK(count_lock, 0);
 while (ms > 0 && count != i) {
  tv.tv_sec = 0;
  tv.tv_usec = ms * 1000;
  elapsed = GetTickCount();
  EVTHREAD_COND_WAIT_TIMED(count_cond, count_lock, &tv);
  elapsed = GetTickCount() - elapsed;
  ms -= elapsed;
 }
 if (count == i)
  rv = 0;
 EVLOCK_UNLOCK(count_lock, 0);

 return rv;
}
