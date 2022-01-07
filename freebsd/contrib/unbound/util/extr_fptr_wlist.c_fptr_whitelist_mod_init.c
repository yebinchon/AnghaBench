
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cachedb_init (struct module_env*,int) ;
 int dns64_init (struct module_env*,int) ;
 int ipsecmod_init (struct module_env*,int) ;
 int iter_init (struct module_env*,int) ;
 int pythonmod_init (struct module_env*,int) ;
 int respip_init (struct module_env*,int) ;
 int subnetmod_init (struct module_env*,int) ;
 int val_init (struct module_env*,int) ;

int
fptr_whitelist_mod_init(int (*fptr)(struct module_env* env, int id))
{
 if(fptr == &iter_init) return 1;
 else if(fptr == &val_init) return 1;
 else if(fptr == &dns64_init) return 1;
 else if(fptr == &respip_init) return 1;
 return 0;
}
