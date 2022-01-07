
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct val_anchors {int dummy; } ;
struct trust_anchor {int lock; struct ta_key* keylist; int numDNSKEY; int numDS; } ;
struct ta_key {struct ta_key* next; } ;


 int LDNS_RR_TYPE_DNSKEY ;
 int LDNS_RR_TYPE_DS ;
 struct trust_anchor* anchor_find (struct val_anchors*,int *,int,size_t,int ) ;
 scalar_t__ anchor_find_key (struct trust_anchor*,int *,size_t,int ) ;
 struct trust_anchor* anchor_new_ta (struct val_anchors*,int *,int,size_t,int ,int) ;
 struct ta_key* anchor_new_ta_key (int *,size_t,int ) ;
 int dname_count_size_labels (int *,size_t*) ;
 int lock_basic_lock (int *) ;
 int lock_basic_unlock (int *) ;
 int log_err (char*) ;

__attribute__((used)) static struct trust_anchor*
anchor_store_new_key(struct val_anchors* anchors, uint8_t* name, uint16_t type,
 uint16_t dclass, uint8_t* rdata, size_t rdata_len)
{
 struct ta_key* k;
 struct trust_anchor* ta;
 int namelabs;
 size_t namelen;
 namelabs = dname_count_size_labels(name, &namelen);
 if(type != LDNS_RR_TYPE_DS && type != LDNS_RR_TYPE_DNSKEY) {
  log_err("Bad type for trust anchor");
  return 0;
 }

 ta = anchor_find(anchors, name, namelabs, namelen, dclass);
 if(!ta) {
  ta = anchor_new_ta(anchors, name, namelabs, namelen, dclass, 1);
  if(!ta)
   return ((void*)0);
  lock_basic_lock(&ta->lock);
 }
 if(!rdata) {
  lock_basic_unlock(&ta->lock);
  return ta;
 }

 if(anchor_find_key(ta, rdata, rdata_len, type)) {
  lock_basic_unlock(&ta->lock);
  return ta;
 }
 k = anchor_new_ta_key(rdata, rdata_len, type);
 if(!k) {
  lock_basic_unlock(&ta->lock);
  return ((void*)0);
 }

 if(type == LDNS_RR_TYPE_DS)
  ta->numDS++;
 else ta->numDNSKEY++;
 k->next = ta->keylist;
 ta->keylist = k;
 lock_basic_unlock(&ta->lock);
 return ta;
}
