
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ m_pid; } ;


 TYPE_1__* pmonitor ;

int
mm_is_monitor(void)
{




 return (pmonitor && pmonitor->m_pid > 0);
}
