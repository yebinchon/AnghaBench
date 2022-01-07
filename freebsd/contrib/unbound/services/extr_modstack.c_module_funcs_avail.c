
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct module_func_block* (* fbgetfunctype ) () ;


 int cachedb_get_funcblock ;
 int dns64_get_funcblock ;
 int ipsecmod_get_funcblock ;
 int iter_get_funcblock ;
 int pythonmod_get_funcblock ;
 int respip_get_funcblock ;
 int subnetmod_get_funcblock ;
 int val_get_funcblock ;

__attribute__((used)) static fbgetfunctype*
module_funcs_avail(void)
{
        static struct module_func_block* (*fb[])(void) = {
  &dns64_get_funcblock,
  &respip_get_funcblock,
  &val_get_funcblock,
  &iter_get_funcblock,
  ((void*)0)};
 return fb;
}
