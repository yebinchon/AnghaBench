
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct local_zones {int dummy; } ;
struct local_zone {int lock; } ;
struct config_file {int dummy; } ;
typedef int str ;


 int LDNS_RR_CLASS_IN ;
 int lock_rw_unlock (int *) ;
 int lz_enter_rr_into_zone (struct local_zone*,char*) ;
 struct local_zone* lz_enter_zone (struct local_zones*,char const*,char*,int ) ;
 scalar_t__ lz_exists (struct local_zones*,char const*) ;
 scalar_t__ lz_nodefault (struct config_file*,char const*) ;
 int snprintf (char*,int,char*,char const*) ;

__attribute__((used)) static int
add_empty_default(struct local_zones* zones, struct config_file* cfg,
        const char* name)
{
 struct local_zone* z;
 char str[1024];
 if(lz_exists(zones, name) || lz_nodefault(cfg, name))
  return 1;
 if(!(z=lz_enter_zone(zones, name, "static", LDNS_RR_CLASS_IN)))
  return 0;
 snprintf(str, sizeof(str), "%s 10800 IN SOA localhost. "
  "nobody.invalid. 1 3600 1200 604800 10800", name);
 if(!lz_enter_rr_into_zone(z, str)) {
  lock_rw_unlock(&z->lock);
  return 0;
 }
 snprintf(str, sizeof(str), "%s 10800 IN NS localhost. ", name);
 if(!lz_enter_rr_into_zone(z, str)) {
  lock_rw_unlock(&z->lock);
  return 0;
 }
 lock_rw_unlock(&z->lock);
 return 1;
}
