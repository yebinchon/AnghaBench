
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct infra_cache {int domain_limits; } ;
struct config_file {int dummy; } ;


 int infra_ratelimit_cfg_insert (struct infra_cache*,struct config_file*) ;
 int name_tree_init (int *) ;
 int name_tree_init_parents (int *) ;

__attribute__((used)) static int
setup_domain_limits(struct infra_cache* infra, struct config_file* cfg)
{
 name_tree_init(&infra->domain_limits);
 if(!infra_ratelimit_cfg_insert(infra, cfg)) {
  return 0;
 }
 name_tree_init_parents(&infra->domain_limits);
 return 1;
}
