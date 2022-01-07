
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct auth_zones {int dummy; } ;
struct auth_zone {int lock; } ;
typedef int nm ;


 int LDNS_MAX_DOMAINLEN ;
 int LDNS_RR_CLASS_IN ;
 struct auth_zone* auth_zone_create (struct auth_zones*,int *,size_t,int ) ;
 struct auth_zone* auth_zone_find (struct auth_zones*,int *,size_t,int ) ;
 int lock_rw_wrlock (int *) ;
 int log_err (char*,char*) ;
 scalar_t__ sldns_str2wire_dname_buf (char*,int *,size_t*) ;

__attribute__((used)) static struct auth_zone*
auth_zones_find_or_add_zone(struct auth_zones* az, char* name)
{
 uint8_t nm[LDNS_MAX_DOMAINLEN+1];
 size_t nmlen = sizeof(nm);
 struct auth_zone* z;

 if(sldns_str2wire_dname_buf(name, nm, &nmlen) != 0) {
  log_err("cannot parse auth zone name: %s", name);
  return 0;
 }
 z = auth_zone_find(az, nm, nmlen, LDNS_RR_CLASS_IN);
 if(!z) {

  z = auth_zone_create(az, nm, nmlen, LDNS_RR_CLASS_IN);
 } else {
  lock_rw_wrlock(&z->lock);
 }
 return z;
}
