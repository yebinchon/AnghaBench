
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct val_neg_zone {int name; } ;
struct val_neg_data {int labs; scalar_t__ in_use; int * name; int node; } ;
struct val_neg_cache {int dummy; } ;
struct TYPE_4__ {int type; } ;
struct TYPE_3__ {scalar_t__ data; } ;
struct ub_packed_rrset_key {TYPE_2__ rk; TYPE_1__ entry; } ;
struct packed_rrset_data {scalar_t__ count; int* rr_len; int ** rr_data; } ;
typedef int rbnode_type ;
typedef int buf ;


 scalar_t__ LDNS_RR_TYPE_NSEC ;
 int * RBTREE_NULL ;
 scalar_t__ dname_canon_lab_cmp (int *,int,int *,int,int*) ;
 int dname_count_labels (int *) ;
 int dname_count_size_labels (int *,size_t*) ;
 int dname_subdomain_c (int *,int ) ;
 size_t dname_valid (int *,int) ;
 int neg_delete_data (struct val_neg_cache*,struct val_neg_data*) ;
 int nsec3_get_nextowner_b32 (struct ub_packed_rrset_key*,int ,int *,int) ;
 scalar_t__ ntohs (int ) ;
 scalar_t__ query_dname_compare (int *,int ) ;
 int * rbtree_next (int *) ;

__attribute__((used)) static void wipeout(struct val_neg_cache* neg, struct val_neg_zone* zone,
 struct val_neg_data* el, struct ub_packed_rrset_key* nsec)
{
 struct packed_rrset_data* d = (struct packed_rrset_data*)nsec->
  entry.data;
 uint8_t* end;
 size_t end_len;
 int end_labs, m;
 rbnode_type* walk, *next;
 struct val_neg_data* cur;
 uint8_t buf[257];

 if(!d || d->count == 0 || d->rr_len[0] < 2+1)
  return;
 if(ntohs(nsec->rk.type) == LDNS_RR_TYPE_NSEC) {
  end = d->rr_data[0]+2;
  end_len = dname_valid(end, d->rr_len[0]-2);
  end_labs = dname_count_labels(end);
 } else {

  if(!nsec3_get_nextowner_b32(nsec, 0, buf, sizeof(buf)))
   return;
  end = buf;
  end_labs = dname_count_size_labels(end, &end_len);
 }


 if(!dname_subdomain_c(el->name, zone->name) ||
  !dname_subdomain_c(end, zone->name))
  return;


 if(query_dname_compare(end, zone->name) == 0) {
  end = ((void*)0);
 }

 walk = rbtree_next(&el->node);
 while(walk && walk != RBTREE_NULL) {
  cur = (struct val_neg_data*)walk;

  if(dname_canon_lab_cmp(cur->name, cur->labs,
   el->name, el->labs, &m) <= 0) {


   walk = rbtree_next(walk);
   continue;
  }



  if(end && dname_canon_lab_cmp(cur->name, cur->labs,
   end, end_labs, &m) >= 0) {
   break;
  }



  next = rbtree_next(walk);
  if(cur->in_use)
   neg_delete_data(neg, cur);
  walk = next;
 }
}
