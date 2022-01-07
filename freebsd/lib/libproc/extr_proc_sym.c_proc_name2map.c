
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct proc_handle {int dummy; } ;
typedef int prmap_t ;
struct TYPE_2__ {int map; } ;


 TYPE_1__* _proc_name2map (struct proc_handle*,char const*) ;

prmap_t *
proc_name2map(struct proc_handle *p, const char *name)
{

 return (&_proc_name2map(p, name)->map);
}
