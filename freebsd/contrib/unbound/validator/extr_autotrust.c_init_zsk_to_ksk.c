
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct trust_anchor {TYPE_1__* autr; } ;
struct module_env {int dummy; } ;
struct autr_ta {scalar_t__ last_change; scalar_t__ s; struct autr_ta* next; int dname_len; int rr_len; int rr; } ;
struct TYPE_2__ {struct autr_ta* keys; } ;


 scalar_t__ AUTR_STATE_ADDPEND ;
 scalar_t__ AUTR_STATE_VALID ;
 scalar_t__ LDNS_RR_TYPE_DNSKEY ;
 int VERB_ALGO ;
 int set_trustanchor_state (struct module_env*,struct autr_ta*,int*,scalar_t__) ;
 scalar_t__ sldns_wirerr_get_type (int ,int ,int ) ;
 scalar_t__ ta_is_dnskey_sep (struct autr_ta*) ;
 int verbose_key (struct autr_ta*,int ,char*) ;

__attribute__((used)) static int
init_zsk_to_ksk(struct module_env* env, struct trust_anchor* tp, int* changed)
{

 struct autr_ta* anchor;
 int validzsk = 0;
 int validksk = 0;
 for(anchor = tp->autr->keys; anchor; anchor = anchor->next) {

  if(sldns_wirerr_get_type(anchor->rr, anchor->rr_len,
   anchor->dname_len) == LDNS_RR_TYPE_DNSKEY &&
   anchor->last_change == 0 &&
   !ta_is_dnskey_sep(anchor) &&
   anchor->s == AUTR_STATE_VALID)
                        validzsk++;
 }
 if(validzsk == 0)
  return 0;
 for(anchor = tp->autr->keys; anchor; anchor = anchor->next) {
                if (ta_is_dnskey_sep(anchor) &&
   anchor->s == AUTR_STATE_ADDPEND) {
   verbose_key(anchor, VERB_ALGO, "trust KSK from "
    "ZSK(config)");
   set_trustanchor_state(env, anchor, changed,
    AUTR_STATE_VALID);
   validksk++;
  }
 }
 return validksk;
}
