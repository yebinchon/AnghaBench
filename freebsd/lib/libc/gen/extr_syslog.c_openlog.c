
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int THREAD_LOCK () ;
 int openlog_unlocked (char const*,int,int) ;
 int pthread_cleanup_pop (int) ;
 int pthread_cleanup_push (int ,int *) ;
 int syslog_cancel_cleanup ;

void
openlog(const char *ident, int logstat, int logfac)
{

 THREAD_LOCK();
 pthread_cleanup_push(syslog_cancel_cleanup, ((void*)0));
 openlog_unlocked(ident, logstat, logfac);
 pthread_cleanup_pop(1);
}
