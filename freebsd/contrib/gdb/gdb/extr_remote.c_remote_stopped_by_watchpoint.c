
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int remote_stopped_by_watchpoint_p ;

__attribute__((used)) static int
remote_stopped_by_watchpoint (void)
{
    return remote_stopped_by_watchpoint_p;
}
