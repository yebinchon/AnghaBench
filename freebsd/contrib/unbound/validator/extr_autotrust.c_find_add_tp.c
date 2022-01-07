
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct val_anchors {int dummy; } ;
struct trust_anchor {int lock; int autr; } ;


 struct trust_anchor* anchor_find (struct val_anchors*,int *,int ,size_t,int ) ;
 struct trust_anchor* autr_tp_create (struct val_anchors*,int *,size_t,int ) ;
 int dname_count_labels (int *) ;
 int lock_basic_lock (int *) ;
 int lock_basic_unlock (int *) ;
 int log_err (char*) ;
 int sldns_wirerr_get_class (int *,size_t,size_t) ;

__attribute__((used)) static struct trust_anchor*
find_add_tp(struct val_anchors* anchors, uint8_t* rr, size_t rr_len,
 size_t dname_len)
{
 struct trust_anchor* tp;
 tp = anchor_find(anchors, rr, dname_count_labels(rr), dname_len,
  sldns_wirerr_get_class(rr, rr_len, dname_len));
 if(tp) {
  if(!tp->autr) {
   log_err("anchor cannot be with and without autotrust");
   lock_basic_unlock(&tp->lock);
   return ((void*)0);
  }
  return tp;
 }
 tp = autr_tp_create(anchors, rr, dname_len, sldns_wirerr_get_class(rr,
  rr_len, dname_len));
 if(!tp)
  return ((void*)0);
 lock_basic_lock(&tp->lock);
 return tp;
}
