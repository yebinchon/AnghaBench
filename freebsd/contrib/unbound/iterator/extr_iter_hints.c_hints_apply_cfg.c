
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iter_hints {int tree; } ;
struct delegpt {int dummy; } ;
struct config_file {int do_ip6; int do_ip4; } ;


 int LDNS_RR_CLASS_IN ;
 int VERB_ALGO ;
 struct delegpt* compile_time_root_prime (int ,int ) ;
 int hints_del_tree (struct iter_hints*) ;
 int hints_insert (struct iter_hints*,int ,struct delegpt*,int ) ;
 int hints_lookup_root (struct iter_hints*,int ) ;
 int name_tree_init (int *) ;
 int name_tree_init_parents (int *) ;
 int read_root_hints_list (struct iter_hints*,struct config_file*) ;
 int read_stubs (struct iter_hints*,struct config_file*) ;
 int verbose (int ,char*) ;

int
hints_apply_cfg(struct iter_hints* hints, struct config_file* cfg)
{
 hints_del_tree(hints);
 name_tree_init(&hints->tree);


 if(!read_root_hints_list(hints, cfg))
  return 0;


 if(!read_stubs(hints, cfg))
  return 0;


 if(!hints_lookup_root(hints, LDNS_RR_CLASS_IN)) {
  struct delegpt* dp = compile_time_root_prime(cfg->do_ip4,
   cfg->do_ip6);
  verbose(VERB_ALGO, "no config, using builtin root hints.");
  if(!dp)
   return 0;
  if(!hints_insert(hints, LDNS_RR_CLASS_IN, dp, 0))
   return 0;
 }

 name_tree_init_parents(&hints->tree);
 return 1;
}
