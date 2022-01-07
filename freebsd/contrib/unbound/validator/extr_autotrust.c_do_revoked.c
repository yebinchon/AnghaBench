
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct module_env {int dummy; } ;
struct autr_ta {scalar_t__ s; } ;


 scalar_t__ AUTR_STATE_MISSING ;
 int AUTR_STATE_REVOKED ;
 scalar_t__ AUTR_STATE_VALID ;
 int VERB_ALGO ;
 int revoke_dnskey (struct autr_ta*,int ) ;
 int set_trustanchor_state (struct module_env*,struct autr_ta*,int*,int ) ;
 int verbose_key (struct autr_ta*,int ,char*) ;

__attribute__((used)) static void
do_revoked(struct module_env* env, struct autr_ta* anchor, int* c)
{
 if(anchor->s == AUTR_STATE_VALID || anchor->s == AUTR_STATE_MISSING) {
                set_trustanchor_state(env, anchor, c, AUTR_STATE_REVOKED);
  verbose_key(anchor, VERB_ALGO, "old id, prior to revocation");
                revoke_dnskey(anchor, 0);
  verbose_key(anchor, VERB_ALGO, "new id, after revocation");
 }
}
