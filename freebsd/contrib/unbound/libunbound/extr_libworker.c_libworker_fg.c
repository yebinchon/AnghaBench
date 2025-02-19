
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct ub_ctx {TYPE_1__* env; int local_zones; } ;
struct query_info {int qname; } ;
struct libworker {int base; TYPE_2__* back; TYPE_3__* env; } ;
struct edns_data {int dummy; } ;
struct ctx_query {struct libworker* w; } ;
struct TYPE_7__ {int mesh; int scratch; } ;
struct TYPE_6__ {int udp_buff; } ;
struct TYPE_5__ {scalar_t__ auth_zones; } ;


 scalar_t__ BIT_RD ;
 int LDNS_RCODE_NOERROR ;
 int UB_INITFAIL ;
 int UB_NOERROR ;
 int UB_NOMEM ;
 int UB_SYNTAX ;
 scalar_t__ auth_zones_answer (scalar_t__,TYPE_3__*,struct query_info*,struct edns_data*,int *,int ,int ) ;
 int comm_base_dispatch (int ) ;
 int free (int ) ;
 int libworker_delete (struct libworker*) ;
 int libworker_fg_done_cb ;
 int libworker_fillup_fg (struct ctx_query*,int ,int ,int ,int *,int ) ;
 struct libworker* libworker_setup (struct ub_ctx*,int ,int *) ;
 scalar_t__ local_zones_answer (int ,TYPE_3__*,struct query_info*,struct edns_data*,int ,int ,int *,int *,int ,int *,int ,int *,int ,int *,int ,int *) ;
 int mesh_new_callback (int ,struct query_info*,scalar_t__,struct edns_data*,int ,scalar_t__,int ,struct ctx_query*) ;
 int regional_free_all (int ) ;
 int sec_status_insecure ;
 int setup_qinfo_edns (struct libworker*,struct ctx_query*,struct query_info*,struct edns_data*) ;
 int sldns_buffer_write_u16_at (int ,int,scalar_t__) ;

int libworker_fg(struct ub_ctx* ctx, struct ctx_query* q)
{
 struct libworker* w = libworker_setup(ctx, 0, ((void*)0));
 uint16_t qflags, qid;
 struct query_info qinfo;
 struct edns_data edns;
 if(!w)
  return UB_INITFAIL;
 if(!setup_qinfo_edns(w, q, &qinfo, &edns)) {
  libworker_delete(w);
  return UB_SYNTAX;
 }
 qid = 0;
 qflags = BIT_RD;
 q->w = w;

 sldns_buffer_write_u16_at(w->back->udp_buff, 0, qid);
 sldns_buffer_write_u16_at(w->back->udp_buff, 2, qflags);
 if(local_zones_answer(ctx->local_zones, w->env, &qinfo, &edns,
  w->back->udp_buff, w->env->scratch, ((void*)0), ((void*)0), 0, ((void*)0), 0,
  ((void*)0), 0, ((void*)0), 0, ((void*)0))) {
  regional_free_all(w->env->scratch);
  libworker_fillup_fg(q, LDNS_RCODE_NOERROR,
   w->back->udp_buff, sec_status_insecure, ((void*)0), 0);
  libworker_delete(w);
  free(qinfo.qname);
  return UB_NOERROR;
 }
 if(ctx->env->auth_zones && auth_zones_answer(ctx->env->auth_zones,
  w->env, &qinfo, &edns, ((void*)0), w->back->udp_buff, w->env->scratch)) {
  regional_free_all(w->env->scratch);
  libworker_fillup_fg(q, LDNS_RCODE_NOERROR,
   w->back->udp_buff, sec_status_insecure, ((void*)0), 0);
  libworker_delete(w);
  free(qinfo.qname);
  return UB_NOERROR;
 }

 if(!mesh_new_callback(w->env->mesh, &qinfo, qflags, &edns,
  w->back->udp_buff, qid, libworker_fg_done_cb, q)) {
  free(qinfo.qname);
  return UB_NOMEM;
 }
 free(qinfo.qname);


 comm_base_dispatch(w->base);

 libworker_delete(w);
 return UB_NOERROR;
}
