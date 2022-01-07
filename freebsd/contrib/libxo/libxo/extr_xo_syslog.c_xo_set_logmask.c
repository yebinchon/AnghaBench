
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int THREAD_LOCK () ;
 int THREAD_UNLOCK () ;
 int xo_logmask ;

int
xo_set_logmask (int pmask)
{
    int omask;

    THREAD_LOCK();
    omask = xo_logmask;
    if (pmask != 0)
        xo_logmask = pmask;
    THREAD_UNLOCK();
    return (omask);
}
