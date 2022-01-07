
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct trust_anchor {int lock; TYPE_1__* autr; int dclass; int namelen; int name; } ;
struct query_info {int qclass; int qname_len; int qname; int qtype; int * local_alias; } ;
struct module_env {int mesh; int key_cache; int rrset_cache; scalar_t__* now; int scratch; int * scratch_buffer; } ;
struct edns_data {int edns_present; int udp_size; int * opt_list; int bits; scalar_t__ edns_version; scalar_t__ ext_rcode; } ;
typedef int sldns_buffer ;
struct TYPE_2__ {scalar_t__ next_probe_time; } ;


 int BIT_RD ;
 int EDNS_DO ;
 int LDNS_RR_TYPE_DNSKEY ;
 int VERB_ALGO ;
 int key_cache_remove (int ,int ,int ,int ) ;
 int lock_basic_unlock (int *) ;
 int log_err (char*) ;
 int log_query_info (int ,char*,struct query_info*) ;
 int mesh_new_callback (int ,struct query_info*,int,struct edns_data*,int *,int ,int *,struct module_env*) ;
 int probe_answer_cb ;
 int regional_alloc_init (int ,int ,int ) ;
 int rrset_cache_remove (int ,int ,int ,int ,int ,int ) ;
 int sldns_buffer_capacity (int *) ;
 int verbose (int ,char*,int) ;

__attribute__((used)) static void
probe_anchor(struct module_env* env, struct trust_anchor* tp)
{
 struct query_info qinfo;
 uint16_t qflags = BIT_RD;
 struct edns_data edns;
 sldns_buffer* buf = env->scratch_buffer;
 qinfo.qname = regional_alloc_init(env->scratch, tp->name, tp->namelen);
 if(!qinfo.qname) {
  log_err("out of memory making 5011 probe");
  return;
 }
 qinfo.qname_len = tp->namelen;
 qinfo.qtype = LDNS_RR_TYPE_DNSKEY;
 qinfo.qclass = tp->dclass;
 qinfo.local_alias = ((void*)0);
 log_query_info(VERB_ALGO, "autotrust probe", &qinfo);
 verbose(VERB_ALGO, "retry probe set in %d seconds",
  (int)tp->autr->next_probe_time - (int)*env->now);
 edns.edns_present = 1;
 edns.ext_rcode = 0;
 edns.edns_version = 0;
 edns.bits = EDNS_DO;
 edns.opt_list = ((void*)0);
 if(sldns_buffer_capacity(buf) < 65535)
  edns.udp_size = (uint16_t)sldns_buffer_capacity(buf);
 else edns.udp_size = 65535;


 lock_basic_unlock(&tp->lock);




 rrset_cache_remove(env->rrset_cache, qinfo.qname, qinfo.qname_len,
  qinfo.qtype, qinfo.qclass, 0);
 key_cache_remove(env->key_cache, qinfo.qname, qinfo.qname_len,
  qinfo.qclass);

 if(!mesh_new_callback(env->mesh, &qinfo, qflags, &edns, buf, 0,
  &probe_answer_cb, env)) {
  log_err("out of memory making 5011 probe");
 }
}
