
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LogMask ;
 int THREAD_LOCK () ;
 int THREAD_UNLOCK () ;

int
setlogmask(int pmask)
{
 int omask;

 THREAD_LOCK();
 omask = LogMask;
 if (pmask != 0)
  LogMask = pmask;
 THREAD_UNLOCK();
 return (omask);
}
