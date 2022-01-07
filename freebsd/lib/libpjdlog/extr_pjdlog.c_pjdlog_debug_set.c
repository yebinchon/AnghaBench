
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ PJDLOG_INITIALIZED ;
 int assert (int) ;
 int pjdlog_debug_level ;
 scalar_t__ pjdlog_initialized ;

void
pjdlog_debug_set(int level)
{

 assert(pjdlog_initialized == PJDLOG_INITIALIZED);
 assert(level >= 0);
 assert(level <= 127);

 pjdlog_debug_level = level;
}
