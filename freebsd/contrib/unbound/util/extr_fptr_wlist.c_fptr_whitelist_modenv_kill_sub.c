
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void mesh_state_delete (struct module_qstate*) ;

int
fptr_whitelist_modenv_kill_sub(void (*fptr)(struct module_qstate* newq))
{
 if(fptr == &mesh_state_delete) return 1;
 return 0;
}
