
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void cachedb_clear (struct module_qstate*,int) ;
 void dns64_clear (struct module_qstate*,int) ;
 void ipsecmod_clear (struct module_qstate*,int) ;
 void iter_clear (struct module_qstate*,int) ;
 void pythonmod_clear (struct module_qstate*,int) ;
 void respip_clear (struct module_qstate*,int) ;
 void subnetmod_clear (struct module_qstate*,int) ;
 void val_clear (struct module_qstate*,int) ;

int
fptr_whitelist_mod_clear(void (*fptr)(struct module_qstate* qstate,
        int id))
{
 if(fptr == &iter_clear) return 1;
 else if(fptr == &val_clear) return 1;
 else if(fptr == &dns64_clear) return 1;
 else if(fptr == &respip_clear) return 1;
 return 0;
}
