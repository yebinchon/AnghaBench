
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct local_zones {int dummy; } ;
struct local_zone {int dummy; } ;
typedef enum localzone_type { ____Placeholder_localzone_type } localzone_type ;


 int free (int *) ;
 int local_zone_str2type (char const*,int*) ;
 int log_err (char*,char const*,char const*) ;
 struct local_zone* lz_enter_zone_dname (struct local_zones*,int *,size_t,int,int,int ) ;
 int parse_dname (char const*,int **,size_t*,int*) ;

__attribute__((used)) static struct local_zone*
lz_enter_zone(struct local_zones* zones, const char* name, const char* type,
 uint16_t dclass)
{
 struct local_zone* z;
 enum localzone_type t;
 uint8_t* nm;
 size_t len;
 int labs;
 if(!parse_dname(name, &nm, &len, &labs)) {
  log_err("bad zone name %s %s", name, type);
  return ((void*)0);
 }
 if(!local_zone_str2type(type, &t)) {
  log_err("bad lz_enter_zone type %s %s", name, type);
  free(nm);
  return ((void*)0);
 }
 if(!(z=lz_enter_zone_dname(zones, nm, len, labs, t, dclass))) {
  log_err("could not enter zone %s %s", name, type);
  return ((void*)0);
 }
 return z;
}
