
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct proc_handle {int dummy; } ;
typedef int prmap_t ;
struct TYPE_2__ {int map; } ;


 TYPE_1__* _proc_addr2map (struct proc_handle*,uintptr_t) ;

prmap_t *
proc_addr2map(struct proc_handle *p, uintptr_t addr)
{

 return (&_proc_addr2map(p, addr)->map);
}
