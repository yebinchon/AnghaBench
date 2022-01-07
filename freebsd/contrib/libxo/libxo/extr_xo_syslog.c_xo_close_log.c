
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NOCONN ;
 int THREAD_LOCK () ;
 int THREAD_UNLOCK () ;
 int close (int) ;
 int xo_logfile ;
 int * xo_logtag ;
 int xo_status ;

void
xo_close_log (void)
{
    THREAD_LOCK();
    if (xo_logfile != -1) {
        (void) close(xo_logfile);
        xo_logfile = -1;
    }
    xo_logtag = ((void*)0);
    xo_status = NOCONN;
    THREAD_UNLOCK();
}
