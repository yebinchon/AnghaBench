
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcl_list {int region; } ;


 size_t regional_get_mem (int ) ;

size_t
tcl_list_get_mem(struct tcl_list* tcl)
{
 if(!tcl) return 0;
 return sizeof(*tcl) + regional_get_mem(tcl->region);
}
