
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct auth_zones {int dummy; } ;
struct auth_zone {int name; } ;


 struct auth_zone* auth_zone_find (struct auth_zones*,int *,size_t,int ) ;
 scalar_t__ auth_zone_find_less_equal (struct auth_zones*,int *,size_t,int ,struct auth_zone**) ;
 int dname_count_size_labels (int *,size_t*) ;
 int * dname_get_shared_topdomain (int ,int *) ;
 scalar_t__ dname_is_root (int *) ;
 int dname_remove_label (int **,size_t*) ;

struct auth_zone*
auth_zones_find_zone(struct auth_zones* az, uint8_t* name, size_t name_len,
 uint16_t dclass)
{
 uint8_t* nm = name;
 size_t nmlen = name_len;
 struct auth_zone* z;
 if(auth_zone_find_less_equal(az, nm, nmlen, dclass, &z)) {

  return z;
 } else {

  if(!z) return ((void*)0);


  nm = dname_get_shared_topdomain(z->name, name);
  dname_count_size_labels(nm, &nmlen);
  z = ((void*)0);
 }


 while(!z) {
  z = auth_zone_find(az, nm, nmlen, dclass);
  if(z) return z;
  if(dname_is_root(nm)) break;
  dname_remove_label(&nm, &nmlen);
 }
 return ((void*)0);
}
