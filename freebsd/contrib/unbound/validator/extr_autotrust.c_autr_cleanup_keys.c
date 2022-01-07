
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct trust_anchor {TYPE_1__* autr; } ;
struct autr_ta {scalar_t__ s; struct autr_ta* next; scalar_t__ pending_count; struct autr_ta* rr; int dname_len; int rr_len; } ;
struct TYPE_2__ {struct autr_ta* keys; } ;


 scalar_t__ AUTR_STATE_ADDPEND ;
 scalar_t__ AUTR_STATE_REMOVED ;
 scalar_t__ AUTR_STATE_START ;
 scalar_t__ LDNS_RR_TYPE_DNSKEY ;
 int free (struct autr_ta*) ;
 scalar_t__ sldns_wirerr_get_type (struct autr_ta*,int ,int ) ;

__attribute__((used)) static void
autr_cleanup_keys(struct trust_anchor* tp)
{
 struct autr_ta* p, **prevp;
 prevp = &tp->autr->keys;
 p = tp->autr->keys;
 while(p) {

  if(p->s == AUTR_STATE_START || p->s == AUTR_STATE_REMOVED ||
   sldns_wirerr_get_type(p->rr, p->rr_len, p->dname_len)
   != LDNS_RR_TYPE_DNSKEY) {
   struct autr_ta* np = p->next;

   free(p->rr);
   free(p);

   *prevp = np;
   p = np;
   continue;
  }

  if(p->s != AUTR_STATE_ADDPEND)
   p->pending_count = 0;
  prevp = &p->next;
  p = p->next;
 }
}
