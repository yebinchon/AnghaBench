
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void cachedb_operate (struct module_qstate*,int,int,struct outbound_entry*) ;
 void dns64_operate (struct module_qstate*,int,int,struct outbound_entry*) ;
 void ipsecmod_operate (struct module_qstate*,int,int,struct outbound_entry*) ;
 void iter_operate (struct module_qstate*,int,int,struct outbound_entry*) ;
 void pythonmod_operate (struct module_qstate*,int,int,struct outbound_entry*) ;
 void respip_operate (struct module_qstate*,int,int,struct outbound_entry*) ;
 void subnetmod_operate (struct module_qstate*,int,int,struct outbound_entry*) ;
 void val_operate (struct module_qstate*,int,int,struct outbound_entry*) ;

int
fptr_whitelist_mod_operate(void (*fptr)(struct module_qstate* qstate,
        enum module_ev event, int id, struct outbound_entry* outbound))
{
 if(fptr == &iter_operate) return 1;
 else if(fptr == &val_operate) return 1;
 else if(fptr == &dns64_operate) return 1;
 else if(fptr == &respip_operate) return 1;
 return 0;
}
