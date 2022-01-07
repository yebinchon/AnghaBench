
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct local_zones {int dummy; } ;
struct config_strbytelist {int str2len; int str2; int str; struct config_strbytelist* next; } ;
struct config_file {struct config_strbytelist* local_zone_tags; } ;


 int LDNS_RR_CLASS_IN ;
 int VERB_ALGO ;
 int lz_enter_zone_tag (struct local_zones*,int ,int ,int ,int ) ;
 int verbose (int ,char*,int) ;

__attribute__((used)) static int
lz_enter_zone_tags(struct local_zones* zones, struct config_file* cfg)
{
 struct config_strbytelist* p;
 int c = 0;
 for(p = cfg->local_zone_tags; p; p = p->next) {
  if(!lz_enter_zone_tag(zones, p->str, p->str2, p->str2len,
   LDNS_RR_CLASS_IN))
   return 0;
  c++;
 }
 if(c) verbose(VERB_ALGO, "applied tags to %d local zones", c);
 return 1;
}
