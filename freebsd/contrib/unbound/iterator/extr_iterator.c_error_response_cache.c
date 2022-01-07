
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct reply_info {scalar_t__ serve_expired_ttl; int qdcount; int security; scalar_t__ ttl; int prefetch_ttl; scalar_t__ flags; } ;
struct TYPE_9__ {int lock; scalar_t__ data; } ;
struct msgreply_entry {TYPE_2__ entry; } ;
struct TYPE_11__ {int qclass; int qtype; int qname_len; int qname; } ;
struct module_qstate {scalar_t__ prefetch_leeway; int query_flags; TYPE_5__ qinfo; TYPE_3__* env; int no_cache_store; } ;
typedef int err ;
struct TYPE_10__ {scalar_t__* now; TYPE_1__* cfg; } ;
struct TYPE_8__ {scalar_t__ serve_expired_ttl; scalar_t__ serve_expired_ttl_reset; scalar_t__ serve_expired; } ;


 int BIT_QR ;
 int BIT_RA ;
 scalar_t__ FLAGS_GET_RCODE (scalar_t__) ;
 int FLAGS_SET_RCODE (scalar_t__,int) ;
 scalar_t__ LDNS_RCODE_NOERROR ;
 scalar_t__ LDNS_RCODE_NXDOMAIN ;
 scalar_t__ NORR_TTL ;
 int PREFETCH_TTL_CALC (scalar_t__) ;
 int VERB_ALGO ;
 scalar_t__ dns_cache_prefetch_adjust (TYPE_3__*,TYPE_5__*,scalar_t__,int ) ;
 int error_response (struct module_qstate*,int,int) ;
 int iter_dns_store (TYPE_3__*,TYPE_5__*,struct reply_info*,int ,int ,int ,int *,int ) ;
 int lock_rw_unlock (int *) ;
 int memset (struct reply_info*,int ,int) ;
 struct msgreply_entry* msg_cache_lookup (TYPE_3__*,int ,int ,int ,int ,int ,scalar_t__,scalar_t__) ;
 int sec_status_indeterminate ;
 int verbose (int ,char*) ;

__attribute__((used)) static int
error_response_cache(struct module_qstate* qstate, int id, int rcode)
{
 if(!qstate->no_cache_store) {

  struct reply_info err;
  if(qstate->prefetch_leeway > NORR_TTL) {
   verbose(VERB_ALGO, "error response for prefetch in cache");

   if(dns_cache_prefetch_adjust(qstate->env, &qstate->qinfo,
    NORR_TTL, qstate->query_flags))
    return error_response(qstate, id, rcode);

  }
  if(qstate->env->cfg->serve_expired) {


   struct msgreply_entry* msg;
   if((msg=msg_cache_lookup(qstate->env,
    qstate->qinfo.qname, qstate->qinfo.qname_len,
    qstate->qinfo.qtype, qstate->qinfo.qclass,
    qstate->query_flags, 0,
    qstate->env->cfg->serve_expired_ttl_reset))
    != ((void*)0)) {
    if(qstate->env->cfg->serve_expired_ttl_reset) {
     struct reply_info* rep =
      (struct reply_info*)msg->entry.data;
     if(rep && *qstate->env->now +
      qstate->env->cfg->serve_expired_ttl >
      rep->serve_expired_ttl) {
      rep->serve_expired_ttl =
       *qstate->env->now +
       qstate->env->cfg->serve_expired_ttl;
     }
    }
    lock_rw_unlock(&msg->entry.lock);
    return error_response(qstate, id, rcode);
   }



  } else {


   struct msgreply_entry* msg;
   if((msg=msg_cache_lookup(qstate->env,
    qstate->qinfo.qname, qstate->qinfo.qname_len,
    qstate->qinfo.qtype, qstate->qinfo.qclass,
    qstate->query_flags, *qstate->env->now, 0))
    != ((void*)0)) {
    struct reply_info* rep = (struct reply_info*)
     msg->entry.data;
    if(FLAGS_GET_RCODE(rep->flags) ==
     LDNS_RCODE_NOERROR ||
     FLAGS_GET_RCODE(rep->flags) ==
     LDNS_RCODE_NXDOMAIN) {


     lock_rw_unlock(&msg->entry.lock);
     return error_response(qstate, id, rcode);
    }
    lock_rw_unlock(&msg->entry.lock);
   }

  }
  memset(&err, 0, sizeof(err));
  err.flags = (uint16_t)(BIT_QR | BIT_RA);
  FLAGS_SET_RCODE(err.flags, rcode);
  err.qdcount = 1;
  err.ttl = NORR_TTL;
  err.prefetch_ttl = PREFETCH_TTL_CALC(err.ttl);
  err.serve_expired_ttl = NORR_TTL;

  err.security = sec_status_indeterminate;
  verbose(VERB_ALGO, "store error response in message cache");
  iter_dns_store(qstate->env, &qstate->qinfo, &err, 0, 0, 0, ((void*)0),
   qstate->query_flags);
 }
 return error_response(qstate, id, rcode);
}
