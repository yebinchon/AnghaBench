
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct local_zones {int lock; } ;
struct local_zone {int lock; int * soa; int name; } ;
struct local_data {int name; int * rrsets; } ;


 int LDNS_RR_TYPE_DS ;
 int del_empty_term (struct local_zone*,struct local_data*,int *,size_t,int) ;
 int del_local_rrset (struct local_data*,int ) ;
 struct local_zone* local_zones_lookup (struct local_zones*,int *,size_t,int,int ,int ) ;
 int lock_rw_rdlock (int *) ;
 int lock_rw_unlock (int *) ;
 int lock_rw_wrlock (int *) ;
 struct local_data* lz_find_node (struct local_zone*,int *,size_t,int) ;
 scalar_t__ query_dname_compare (int ,int ) ;

void local_zones_del_data(struct local_zones* zones,
 uint8_t* name, size_t len, int labs, uint16_t dclass)
{

 struct local_zone* z;
 struct local_data* d;


 lock_rw_rdlock(&zones->lock);
 z = local_zones_lookup(zones, name, len, labs, dclass, LDNS_RR_TYPE_DS);
 if(z) {
  lock_rw_wrlock(&z->lock);
  d = lz_find_node(z, name, len, labs);
  if(d) {
   del_local_rrset(d, LDNS_RR_TYPE_DS);
   del_empty_term(z, d, name, len, labs);
  }
  lock_rw_unlock(&z->lock);
 }
 lock_rw_unlock(&zones->lock);


 lock_rw_rdlock(&zones->lock);
 z = local_zones_lookup(zones, name, len, labs, dclass, 0);
 if(!z) {

  lock_rw_unlock(&zones->lock);
  return;
 }
 lock_rw_wrlock(&z->lock);
 lock_rw_unlock(&zones->lock);


 d = lz_find_node(z, name, len, labs);
 if(d) {

  d->rrsets = ((void*)0);

  if(query_dname_compare(d->name, z->name) == 0)
   z->soa = ((void*)0);


  del_empty_term(z, d, name, len, labs);
 }

 lock_rw_unlock(&z->lock);
}
