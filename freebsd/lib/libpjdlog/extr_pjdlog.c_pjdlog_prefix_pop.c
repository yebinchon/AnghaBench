
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ PJDLOG_INITIALIZED ;
 int assert (int) ;
 scalar_t__ pjdlog_initialized ;
 scalar_t__ pjdlog_prefix_current ;

void
pjdlog_prefix_pop(void)
{

 assert(pjdlog_initialized == PJDLOG_INITIALIZED);
 assert(pjdlog_prefix_current > 0);

 pjdlog_prefix_current--;
}
