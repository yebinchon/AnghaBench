
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct val_qstate {int wait_prime_ta; int trust_anchor_name; int trust_anchor_labs; int trust_anchor_len; } ;
struct trust_anchor {int namelabs; int namelen; int name; int dclass; } ;
struct module_qstate {int region; TYPE_2__* env; } ;
struct TYPE_4__ {TYPE_1__* cfg; } ;
struct TYPE_3__ {scalar_t__ trust_anchor_signaling; } ;


 int BIT_CD ;
 int LDNS_RR_TYPE_DNSKEY ;
 int VERB_ALGO ;
 int generate_keytag_query (struct module_qstate*,int,struct trust_anchor*) ;
 int generate_request (struct module_qstate*,int,int ,int ,int ,int ,int ,struct module_qstate**,int ) ;
 int log_err (char*) ;
 int regional_alloc_init (int ,int ,int ) ;
 int verbose (int ,char*) ;

__attribute__((used)) static int
prime_trust_anchor(struct module_qstate* qstate, struct val_qstate* vq,
 int id, struct trust_anchor* toprime)
{
 struct module_qstate* newq = ((void*)0);
 int ret = generate_request(qstate, id, toprime->name, toprime->namelen,
  LDNS_RR_TYPE_DNSKEY, toprime->dclass, BIT_CD, &newq, 0);

 if(newq && qstate->env->cfg->trust_anchor_signaling &&
  !generate_keytag_query(qstate, id, toprime)) {
  verbose(VERB_ALGO, "keytag signaling query failed");
  return 0;
 }

 if(!ret) {
  verbose(VERB_ALGO, "Could not prime trust anchor");
  return 0;
 }


 vq->wait_prime_ta = 1;


 vq->trust_anchor_name = regional_alloc_init(qstate->region,
  toprime->name, toprime->namelen);
 vq->trust_anchor_len = toprime->namelen;
 vq->trust_anchor_labs = toprime->namelabs;
 if(!vq->trust_anchor_name) {
  log_err("Could not prime trust anchor: out of memory");
  return 0;
 }
 return 1;
}
