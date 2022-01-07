
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;


 scalar_t__ PJDLOG_INITIALIZED ;
 int PJDLOG_PREFIX_STACK ;
 int assert (int) ;
 scalar_t__ pjdlog_initialized ;
 int pjdlog_prefix_current ;
 int pjdlogv_prefix_set (char const*,int ) ;

void
pjdlogv_prefix_push(const char *fmt, va_list ap)
{

 assert(pjdlog_initialized == PJDLOG_INITIALIZED);
 assert(pjdlog_prefix_current < PJDLOG_PREFIX_STACK - 1);

 pjdlog_prefix_current++;

 pjdlogv_prefix_set(fmt, ap);
}
