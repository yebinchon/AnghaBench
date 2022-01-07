
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct monitor {int dummy; } ;


 int monitor_openfds (struct monitor*,int) ;
 struct monitor* xcalloc (int,int) ;

struct monitor *
monitor_init(void)
{
 struct monitor *mon;

 mon = xcalloc(1, sizeof(*mon));
 monitor_openfds(mon, 1);

 return mon;
}
