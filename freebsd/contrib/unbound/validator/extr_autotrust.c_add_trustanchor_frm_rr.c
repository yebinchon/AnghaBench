
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct val_anchors {int dummy; } ;
struct trust_anchor {int lock; TYPE_1__* autr; } ;
struct autr_ta {struct autr_ta* next; struct autr_ta* rr; } ;
struct TYPE_2__ {struct autr_ta* keys; } ;


 struct autr_ta* autr_ta_create (int *,size_t,size_t) ;
 struct trust_anchor* find_add_tp (struct val_anchors*,int *,size_t,size_t) ;
 int free (struct autr_ta*) ;
 int lock_basic_unlock (int *) ;

__attribute__((used)) static struct autr_ta*
add_trustanchor_frm_rr(struct val_anchors* anchors, uint8_t* rr, size_t rr_len,
        size_t dname_len, struct trust_anchor** tp)
{
 struct autr_ta* ta = autr_ta_create(rr, rr_len, dname_len);
 if(!ta)
  return ((void*)0);
 *tp = find_add_tp(anchors, rr, rr_len, dname_len);
 if(!*tp) {
  free(ta->rr);
  free(ta);
  return ((void*)0);
 }

 ta->next = (*tp)->autr->keys;
 (*tp)->autr->keys = ta;
 lock_basic_unlock(&(*tp)->lock);
 return ta;
}
