
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct local_zones {int dummy; } ;
struct local_zone {int lock; } ;
struct config_str2list {int str2; int str; struct config_str2list* next; } ;
struct config_file {struct config_str2list* local_zones; } ;


 int LDNS_RR_CLASS_IN ;
 int lock_rw_unlock (int *) ;
 struct local_zone* lz_enter_zone (struct local_zones*,int ,int ,int ) ;

__attribute__((used)) static int
lz_enter_zones(struct local_zones* zones, struct config_file* cfg)
{
 struct config_str2list* p;
 struct local_zone* z;
 for(p = cfg->local_zones; p; p = p->next) {
  if(!(z=lz_enter_zone(zones, p->str, p->str2,
   LDNS_RR_CLASS_IN)))
   return 0;
  lock_rw_unlock(&z->lock);
 }
 return 1;
}
