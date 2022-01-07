
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct local_zones {int dummy; } ;
struct config_strlist {int str; struct config_strlist* next; } ;
struct config_file {struct config_strlist* local_data; } ;


 int lz_enter_rr_str (struct local_zones*,int ) ;

__attribute__((used)) static int
lz_enter_data(struct local_zones* zones, struct config_file* cfg)
{
 struct config_strlist* p;
 for(p = cfg->local_data; p; p = p->next) {
  if(!lz_enter_rr_str(zones, p->str))
   return 0;
 }
 return 1;
}
