
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ PJDLOG_INITIALIZED ;
 int assert (int) ;
 scalar_t__ pjdlog_initialized ;
 char const** pjdlog_prefix ;
 size_t pjdlog_prefix_current ;

const char *
pjdlog_prefix_get(void)
{

 assert(pjdlog_initialized == PJDLOG_INITIALIZED);

 return (pjdlog_prefix[pjdlog_prefix_current]);
}
