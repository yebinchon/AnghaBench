
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct monitor {int dummy; } ;


 int monitor_openfds (struct monitor*,int ) ;

void
monitor_reinit(struct monitor *mon)
{
 monitor_openfds(mon, 0);
}
