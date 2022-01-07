
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int THREAD_LOCK () ;
 int THREAD_UNLOCK () ;
 int xo_open_log_unlocked (char const*,int,int) ;

void
xo_open_log (const char *ident, int logstat, int logfac)
{
    THREAD_LOCK();
    xo_open_log_unlocked(ident, logstat, logfac);
    THREAD_UNLOCK();
}
