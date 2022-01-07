
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int evutil_free_globals_ () ;

__attribute__((used)) static void
event_free_evutil_globals(void)
{
 evutil_free_globals_();
}
