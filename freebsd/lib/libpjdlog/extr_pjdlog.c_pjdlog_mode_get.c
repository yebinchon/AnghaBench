
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ PJDLOG_INITIALIZED ;
 int assert (int) ;
 scalar_t__ pjdlog_initialized ;
 int pjdlog_mode ;

int
pjdlog_mode_get(void)
{

 assert(pjdlog_initialized == PJDLOG_INITIALIZED);

 return (pjdlog_mode);
}
