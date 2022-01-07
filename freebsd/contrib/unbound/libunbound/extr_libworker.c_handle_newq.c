
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef scalar_t__ uint16_t ;
struct query_info {int * qname; } ;
struct libworker {TYPE_2__* back; TYPE_3__* env; TYPE_4__* ctx; scalar_t__ is_bg_thread; } ;
struct edns_data {int dummy; } ;
struct ctx_query {struct libworker* w; void* msg_security; } ;
struct TYPE_10__ {TYPE_1__* env; int local_zones; int cfglock; } ;
struct TYPE_9__ {int mesh; int scratch; } ;
struct TYPE_8__ {int * udp_buff; } ;
struct TYPE_7__ {scalar_t__ auth_zones; } ;


 scalar_t__ BIT_RD ;
 int UB_NOERROR ;
 int UB_NOMEM ;
 int UB_SYNTAX ;
 int add_bg_result (struct libworker*,struct ctx_query*,int *,int ,int *,int ) ;
 scalar_t__ auth_zones_answer (scalar_t__,TYPE_3__*,struct query_info*,struct edns_data*,int *,int *,int ) ;
 struct ctx_query* context_deserialize_new_query (TYPE_4__*,int *,int ) ;
 struct ctx_query* context_lookup_new_query (TYPE_4__*,int *,int ) ;
 int free (int *) ;
 int libworker_bg_done_cb ;
 scalar_t__ local_zones_answer (int ,TYPE_3__*,struct query_info*,struct edns_data*,int *,int ,int *,int *,int ,int *,int ,int *,int ,int *,int ,int *) ;
 int lock_basic_lock (int *) ;
 int lock_basic_unlock (int *) ;
 int log_err (char*) ;
 int mesh_new_callback (int ,struct query_info*,scalar_t__,struct edns_data*,int *,scalar_t__,int ,struct ctx_query*) ;
 int regional_free_all (int ) ;
 void* sec_status_insecure ;
 int setup_qinfo_edns (struct libworker*,struct ctx_query*,struct query_info*,struct edns_data*) ;
 int sldns_buffer_write_u16_at (int *,int,scalar_t__) ;

__attribute__((used)) static void
handle_newq(struct libworker* w, uint8_t* buf, uint32_t len)
{
 uint16_t qflags, qid;
 struct query_info qinfo;
 struct edns_data edns;
 struct ctx_query* q;
 if(w->is_bg_thread) {
  lock_basic_lock(&w->ctx->cfglock);
  q = context_lookup_new_query(w->ctx, buf, len);
  lock_basic_unlock(&w->ctx->cfglock);
 } else {
  q = context_deserialize_new_query(w->ctx, buf, len);
 }
 free(buf);
 if(!q) {
  log_err("failed to deserialize newq");
  return;
 }
 if(!setup_qinfo_edns(w, q, &qinfo, &edns)) {
  add_bg_result(w, q, ((void*)0), UB_SYNTAX, ((void*)0), 0);
  return;
 }
 qid = 0;
 qflags = BIT_RD;

 sldns_buffer_write_u16_at(w->back->udp_buff, 0, qid);
 sldns_buffer_write_u16_at(w->back->udp_buff, 2, qflags);
 if(local_zones_answer(w->ctx->local_zones, w->env, &qinfo, &edns,
  w->back->udp_buff, w->env->scratch, ((void*)0), ((void*)0), 0, ((void*)0), 0,
  ((void*)0), 0, ((void*)0), 0, ((void*)0))) {
  regional_free_all(w->env->scratch);
  q->msg_security = sec_status_insecure;
  add_bg_result(w, q, w->back->udp_buff, UB_NOERROR, ((void*)0), 0);
  free(qinfo.qname);
  return;
 }
 if(w->ctx->env->auth_zones && auth_zones_answer(w->ctx->env->auth_zones,
  w->env, &qinfo, &edns, ((void*)0), w->back->udp_buff, w->env->scratch)) {
  regional_free_all(w->env->scratch);
  q->msg_security = sec_status_insecure;
  add_bg_result(w, q, w->back->udp_buff, UB_NOERROR, ((void*)0), 0);
  free(qinfo.qname);
  return;
 }
 q->w = w;

 if(!mesh_new_callback(w->env->mesh, &qinfo, qflags, &edns,
  w->back->udp_buff, qid, libworker_bg_done_cb, q)) {
  add_bg_result(w, q, ((void*)0), UB_NOMEM, ((void*)0), 0);
 }
 free(qinfo.qname);
}
