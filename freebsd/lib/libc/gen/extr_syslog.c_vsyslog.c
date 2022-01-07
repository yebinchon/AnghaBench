
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;


 int THREAD_LOCK () ;
 int pthread_cleanup_pop (int) ;
 int pthread_cleanup_push (int ,int *) ;
 int syslog_cancel_cleanup ;
 int vsyslog1 (int,char const*,int ) ;

void
vsyslog(int pri, const char *fmt, va_list ap)
{

 THREAD_LOCK();
 pthread_cleanup_push(syslog_cancel_cleanup, ((void*)0));
 vsyslog1(pri, fmt, ap);
 pthread_cleanup_pop(1);
}
