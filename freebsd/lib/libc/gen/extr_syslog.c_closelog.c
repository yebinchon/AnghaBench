
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LogFile ;
 int * LogTag ;
 int NOCONN ;
 int THREAD_LOCK () ;
 int THREAD_UNLOCK () ;
 int _close (int) ;
 int status ;

void
closelog(void)
{
 THREAD_LOCK();
 if (LogFile != -1) {
  (void)_close(LogFile);
  LogFile = -1;
 }
 LogTag = ((void*)0);
 status = NOCONN;
 THREAD_UNLOCK();
}
