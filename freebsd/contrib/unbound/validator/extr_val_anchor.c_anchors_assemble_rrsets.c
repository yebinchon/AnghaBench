
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct val_anchors {int lock; struct trust_anchor* dlv_anchor; int tree; } ;
struct trust_anchor {size_t numDS; size_t numDNSKEY; int lock; int node; int name; int dclass; scalar_t__ autr; } ;
typedef int rbnode_type ;


 int LDNS_RR_TYPE_DNSKEY ;
 int LDNS_RR_TYPE_DS ;
 int * RBTREE_NULL ;
 int anchors_assemble (struct trust_anchor*) ;
 int anchors_delfunc (int *,int *) ;
 size_t anchors_dnskey_unsupported (struct trust_anchor*) ;
 size_t anchors_ds_unsupported (struct trust_anchor*) ;
 int dname_str (int ,char*) ;
 int lock_basic_lock (int *) ;
 int lock_basic_unlock (int *) ;
 int log_err (char*) ;
 int log_nametypeclass (int ,char*,int ,int ,int ) ;
 int log_warn (char*,char*) ;
 int rbtree_delete (int ,int *) ;
 scalar_t__ rbtree_first (int ) ;
 scalar_t__ rbtree_next (int *) ;

__attribute__((used)) static int
anchors_assemble_rrsets(struct val_anchors* anchors)
{
 struct trust_anchor* ta;
 struct trust_anchor* next;
 size_t nods, nokey;
 lock_basic_lock(&anchors->lock);
 ta=(struct trust_anchor*)rbtree_first(anchors->tree);
 while((rbnode_type*)ta != RBTREE_NULL) {
  next = (struct trust_anchor*)rbtree_next(&ta->node);
  lock_basic_lock(&ta->lock);
  if(ta->autr || (ta->numDS == 0 && ta->numDNSKEY == 0)) {
   lock_basic_unlock(&ta->lock);
   ta = next;
   continue;
  }
  if(!anchors_assemble(ta)) {
   log_err("out of memory");
   lock_basic_unlock(&ta->lock);
   lock_basic_unlock(&anchors->lock);
   return 0;
  }
  nods = anchors_ds_unsupported(ta);
  nokey = anchors_dnskey_unsupported(ta);
  if(nods) {
   log_nametypeclass(0, "warning: unsupported "
    "algorithm for trust anchor",
    ta->name, LDNS_RR_TYPE_DS, ta->dclass);
  }
  if(nokey) {
   log_nametypeclass(0, "warning: unsupported "
    "algorithm for trust anchor",
    ta->name, LDNS_RR_TYPE_DNSKEY, ta->dclass);
  }
  if(nods == ta->numDS && nokey == ta->numDNSKEY) {
   char b[257];
   dname_str(ta->name, b);
   log_warn("trust anchor %s has no supported algorithms,"
    " the anchor is ignored (check if you need to"
    " upgrade unbound and "



    "openssl"

    ")", b);
   (void)rbtree_delete(anchors->tree, &ta->node);
   lock_basic_unlock(&ta->lock);
   if(anchors->dlv_anchor == ta)
    anchors->dlv_anchor = ((void*)0);
   anchors_delfunc(&ta->node, ((void*)0));
   ta = next;
   continue;
  }
  lock_basic_unlock(&ta->lock);
  ta = next;
 }
 lock_basic_unlock(&anchors->lock);
 return 1;
}
