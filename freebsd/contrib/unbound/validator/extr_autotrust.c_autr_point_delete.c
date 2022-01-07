
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trust_anchor {struct trust_anchor* name; struct trust_anchor* autr; struct trust_anchor* file; struct trust_anchor* rr; struct trust_anchor* next; struct trust_anchor* keys; int dnskey_rrset; int ds_rrset; int lock; } ;
struct autr_ta {struct autr_ta* name; struct autr_ta* autr; struct autr_ta* file; struct autr_ta* rr; struct autr_ta* next; struct autr_ta* keys; int dnskey_rrset; int ds_rrset; int lock; } ;


 int autr_rrset_delete (int ) ;
 int free (struct trust_anchor*) ;
 int lock_basic_destroy (int *) ;
 int lock_unprotect (int *,struct trust_anchor*) ;

void autr_point_delete(struct trust_anchor* tp)
{
 if(!tp)
  return;
 lock_unprotect(&tp->lock, tp);
 lock_unprotect(&tp->lock, tp->autr);
 lock_basic_destroy(&tp->lock);
 autr_rrset_delete(tp->ds_rrset);
 autr_rrset_delete(tp->dnskey_rrset);
 if(tp->autr) {
  struct autr_ta* p = tp->autr->keys, *np;
  while(p) {
   np = p->next;
   free(p->rr);
   free(p);
   p = np;
  }
  free(tp->autr->file);
  free(tp->autr);
 }
 free(tp->name);
 free(tp);
}
