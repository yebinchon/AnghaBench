
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void mesh_detach_subs (struct module_qstate*) ;

int
fptr_whitelist_modenv_detach_subs(void (*fptr)(
        struct module_qstate* qstate))
{
 if(fptr == &mesh_detach_subs) return 1;
 return 0;
}
