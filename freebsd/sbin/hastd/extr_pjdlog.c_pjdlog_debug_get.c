
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ PJDLOG_INITIALIZED ;
 int assert (int) ;
 int pjdlog_debug_level ;
 scalar_t__ pjdlog_initialized ;

int
pjdlog_debug_get(void)
{

 assert(pjdlog_initialized == PJDLOG_INITIALIZED);

 return (pjdlog_debug_level);
}
