
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct val_neg_zone {int nsec3_hash; size_t nsec3_iter; size_t nsec3_saltlen; int * nsec3_salt; int tree; } ;
struct val_neg_data {scalar_t__ count; int in_use; struct val_neg_data* parent; int node; struct val_neg_zone* zone; scalar_t__ len; int name; } ;
struct val_neg_cache {size_t nsec3_max_iter; int use; } ;
struct TYPE_4__ {size_t dname_len; int type; int rrset_class; int * dname; } ;
struct TYPE_3__ {scalar_t__ data; } ;
struct ub_packed_rrset_key {TYPE_2__ rk; TYPE_1__ entry; } ;
struct packed_rrset_data {scalar_t__ security; scalar_t__ rrsig_count; } ;


 scalar_t__ LDNS_RR_TYPE_NSEC3 ;
 int VERB_ALGO ;
 int dname_count_labels (int *) ;
 int free (int *) ;
 int log_assert (int) ;
 int log_err (char*) ;
 int log_nametypeclass (int ,char*,int *,scalar_t__,scalar_t__) ;
 scalar_t__ memcmp (int *,int *,size_t) ;
 int * memdup (int *,size_t) ;
 struct val_neg_data* neg_closest_data_parent (struct val_neg_zone*,int *,size_t,int) ;
 struct val_neg_data* neg_data_chain (int *,size_t,int,struct val_neg_data*) ;
 int neg_lru_front (struct val_neg_cache*,struct val_neg_data*) ;
 int neg_lru_touch (struct val_neg_cache*,struct val_neg_data*) ;
 scalar_t__ nsec3_get_params (struct ub_packed_rrset_key*,int ,int*,size_t*,int **,size_t*) ;
 scalar_t__ ntohs (int ) ;
 scalar_t__ query_dname_compare (int ,int *) ;
 int rbtree_insert (int *,int *) ;
 scalar_t__ sec_status_secure ;
 scalar_t__ sec_status_unchecked ;
 int wipeout (struct val_neg_cache*,struct val_neg_zone*,struct val_neg_data*,struct ub_packed_rrset_key*) ;

void neg_insert_data(struct val_neg_cache* neg,
 struct val_neg_zone* zone, struct ub_packed_rrset_key* nsec)
{
 struct packed_rrset_data* d;
 struct val_neg_data* parent;
 struct val_neg_data* el;
 uint8_t* nm = nsec->rk.dname;
 size_t nm_len = nsec->rk.dname_len;
 int labs = dname_count_labels(nsec->rk.dname);

 d = (struct packed_rrset_data*)nsec->entry.data;
 if( !(d->security == sec_status_secure ||
  (d->security == sec_status_unchecked && d->rrsig_count > 0)))
  return;
 log_nametypeclass(VERB_ALGO, "negcache rr",
  nsec->rk.dname, ntohs(nsec->rk.type),
  ntohs(nsec->rk.rrset_class));


 parent = neg_closest_data_parent(zone, nm, nm_len, labs);
 if(parent && query_dname_compare(parent->name, nm) == 0) {

  log_assert(parent->count > 0);
  el = parent;
 } else {
  struct val_neg_data* p, *np;



  log_assert(!parent || parent->count > 0);

  el = neg_data_chain(nm, nm_len, labs, parent);
  if(!el) {
   log_err("out of memory inserting NSEC negative cache");
   return;
  }
  el->in_use = 0;


  p = el;
  while(p) {
   np = p->parent;

   neg->use += sizeof(struct val_neg_data) + p->len;

   p->zone = zone;
   (void)rbtree_insert(&zone->tree, &p->node);

   if(np == ((void*)0))
    p->parent = parent;
   p = np;
  }
 }

 if(!el->in_use) {
  struct val_neg_data* p;

  el->in_use = 1;

  for(p=el; p; p = p->parent) {
   p->count++;
  }

  neg_lru_front(neg, el);
 } else {

  neg_lru_touch(neg, el);
 }


 if(ntohs(nsec->rk.type) == LDNS_RR_TYPE_NSEC3) {
  int h;
  uint8_t* s;
  size_t slen, it;
  if(nsec3_get_params(nsec, 0, &h, &it, &s, &slen) &&
   it <= neg->nsec3_max_iter &&
   (h != zone->nsec3_hash || it != zone->nsec3_iter ||
   slen != zone->nsec3_saltlen ||
   memcmp(zone->nsec3_salt, s, slen) != 0)) {

   if(slen > 0) {
    uint8_t* sa = memdup(s, slen);
    if(sa) {
     free(zone->nsec3_salt);
     zone->nsec3_salt = sa;
     zone->nsec3_saltlen = slen;
     zone->nsec3_iter = it;
     zone->nsec3_hash = h;
    }
   } else {
    free(zone->nsec3_salt);
    zone->nsec3_salt = ((void*)0);
    zone->nsec3_saltlen = 0;
    zone->nsec3_iter = it;
    zone->nsec3_hash = h;
   }
  }
 }


 wipeout(neg, zone, el, nsec);
}
