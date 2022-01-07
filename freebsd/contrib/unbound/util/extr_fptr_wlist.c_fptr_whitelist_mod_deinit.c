
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void cachedb_deinit (struct module_env*,int) ;
 void dns64_deinit (struct module_env*,int) ;
 void ipsecmod_deinit (struct module_env*,int) ;
 void iter_deinit (struct module_env*,int) ;
 void pythonmod_deinit (struct module_env*,int) ;
 void respip_deinit (struct module_env*,int) ;
 void subnetmod_deinit (struct module_env*,int) ;
 void val_deinit (struct module_env*,int) ;

int
fptr_whitelist_mod_deinit(void (*fptr)(struct module_env* env, int id))
{
 if(fptr == &iter_deinit) return 1;
 else if(fptr == &val_deinit) return 1;
 else if(fptr == &dns64_deinit) return 1;
 else if(fptr == &respip_deinit) return 1;
 return 0;
}
