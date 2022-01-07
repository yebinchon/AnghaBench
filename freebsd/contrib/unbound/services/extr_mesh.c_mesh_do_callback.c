
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct reply_info {scalar_t__ security; } ;
struct TYPE_13__ {int was_ratelimited; TYPE_3__* env; int qinfo; int region; } ;
struct mesh_state {TYPE_4__ s; } ;
struct TYPE_11__ {size_t udp_size; int bits; scalar_t__ ext_rcode; int edns_version; int * opt_list; } ;
struct mesh_cb {int buf; int cb_arg; int (* cb ) (int ,int,int ,scalar_t__,char*,int) ;TYPE_2__ edns; int qflags; int qid; } ;
struct TYPE_12__ {TYPE_1__* mesh; int scratch; } ;
struct TYPE_10__ {int num_reply_addrs; } ;


 size_t EDNS_ADVERTISED_SIZE ;
 int EDNS_ADVERTISED_VERSION ;
 int EDNS_DO ;
 int LDNS_RCODE_NOERROR ;
 int LDNS_RCODE_SERVFAIL ;
 char* errinf_to_str_bogus (TYPE_4__*) ;
 int fptr_ok (int ) ;
 int fptr_whitelist_mesh_cb (int (*) (int ,int,int ,scalar_t__,char*,int)) ;
 int free (char*) ;
 int inplace_cb_reply_call (TYPE_3__*,int *,TYPE_4__*,struct reply_info*,int,TYPE_2__*,int *,int ) ;
 int inplace_cb_reply_servfail_call (TYPE_3__*,int *,TYPE_4__*,struct reply_info*,int,TYPE_2__*,int *,int ) ;
 int reply_info_answer_encode (int *,struct reply_info*,int ,int ,int ,int ,int,int ,size_t,TYPE_2__*,int,int) ;
 scalar_t__ sec_status_bogus ;
 scalar_t__ sec_status_secure ;
 scalar_t__ sec_status_secure_sentinel_fail ;
 scalar_t__ sec_status_unchecked ;
 int sldns_buffer_clear (int ) ;
 int stub1 (int ,int,int ,scalar_t__,char*,int) ;
 int stub2 (int ,int,int ,scalar_t__,char*,int) ;
 int stub3 (int ,int,int ,scalar_t__,char*,int) ;

__attribute__((used)) static void
mesh_do_callback(struct mesh_state* m, int rcode, struct reply_info* rep,
 struct mesh_cb* r)
{
 int secure;
 char* reason = ((void*)0);
 int was_ratelimited = m->s.was_ratelimited;


 if(rep && rep->security == sec_status_secure)
  secure = 1;
 else secure = 0;
 if(!rep && rcode == LDNS_RCODE_NOERROR)
  rcode = LDNS_RCODE_SERVFAIL;
 if(!rcode && (rep->security == sec_status_bogus ||
  rep->security == sec_status_secure_sentinel_fail)) {
  if(!(reason = errinf_to_str_bogus(&m->s)))
   rcode = LDNS_RCODE_SERVFAIL;
 }

 if(rcode) {
  if(rcode == LDNS_RCODE_SERVFAIL) {
   if(!inplace_cb_reply_servfail_call(m->s.env, &m->s.qinfo, &m->s,
    rep, rcode, &r->edns, ((void*)0), m->s.region))
     r->edns.opt_list = ((void*)0);
  } else {
   if(!inplace_cb_reply_call(m->s.env, &m->s.qinfo, &m->s, rep, rcode,
    &r->edns, ((void*)0), m->s.region))
     r->edns.opt_list = ((void*)0);
  }
  fptr_ok(fptr_whitelist_mesh_cb(r->cb));
  (*r->cb)(r->cb_arg, rcode, r->buf, sec_status_unchecked, ((void*)0),
   was_ratelimited);
 } else {
  size_t udp_size = r->edns.udp_size;
  sldns_buffer_clear(r->buf);
  r->edns.edns_version = EDNS_ADVERTISED_VERSION;
  r->edns.udp_size = EDNS_ADVERTISED_SIZE;
  r->edns.ext_rcode = 0;
  r->edns.bits &= EDNS_DO;

  if(!inplace_cb_reply_call(m->s.env, &m->s.qinfo, &m->s, rep,
   LDNS_RCODE_NOERROR, &r->edns, ((void*)0), m->s.region) ||
   !reply_info_answer_encode(&m->s.qinfo, rep, r->qid,
   r->qflags, r->buf, 0, 1,
   m->s.env->scratch, udp_size, &r->edns,
   (int)(r->edns.bits & EDNS_DO), secure))
  {
   fptr_ok(fptr_whitelist_mesh_cb(r->cb));
   (*r->cb)(r->cb_arg, LDNS_RCODE_SERVFAIL, r->buf,
    sec_status_unchecked, ((void*)0), 0);
  } else {
   fptr_ok(fptr_whitelist_mesh_cb(r->cb));
   (*r->cb)(r->cb_arg, LDNS_RCODE_NOERROR, r->buf,
    rep->security, reason, was_ratelimited);
  }
 }
 free(reason);
 m->s.env->mesh->num_reply_addrs--;
}
