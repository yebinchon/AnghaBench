
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int window_first; int window_last; int * p_log; int is_sa_mad; int mad_sz; int sar; int event; } ;
typedef TYPE_1__ osmv_rmpp_send_ctx_t ;
typedef int osm_log_t ;
typedef int ib_mad_t ;
typedef scalar_t__ ib_api_status_t ;
typedef scalar_t__ cl_status_t ;


 int CL_ASSERT (TYPE_1__*) ;
 scalar_t__ CL_SUCCESS ;
 int FALSE ;
 scalar_t__ IB_ERROR ;
 scalar_t__ IB_INVALID_PARAMETER ;
 scalar_t__ IB_SUCCESS ;
 int TRUE ;
 int cl_event_construct (int *) ;
 scalar_t__ cl_event_init (int *,int ) ;
 scalar_t__ osmv_mad_is_sa (int *) ;
 scalar_t__ osmv_rmpp_sar_init (int *,void*,int ,int ) ;

ib_api_status_t
osmv_rmpp_send_ctx_init(osmv_rmpp_send_ctx_t * p_ctx, void *p_arbt_mad,
   uint32_t mad_sz, osm_log_t * p_log)
{
 ib_api_status_t st = IB_SUCCESS;
 cl_status_t cl_st;

 CL_ASSERT(p_ctx);
 if (((void*)0) == p_arbt_mad) {
  return IB_INVALID_PARAMETER;
 }

 if (osmv_mad_is_sa((ib_mad_t *) p_arbt_mad)) {
  p_ctx->is_sa_mad = TRUE;
 } else
  p_ctx->is_sa_mad = FALSE;

 p_ctx->mad_sz = mad_sz;

 cl_event_construct(&p_ctx->event);
 cl_st = cl_event_init(&p_ctx->event, FALSE);
 if (cl_st != CL_SUCCESS) {
  return IB_ERROR;
 }

 st = osmv_rmpp_sar_init(&p_ctx->sar, p_arbt_mad, p_ctx->mad_sz,
    p_ctx->is_sa_mad);
 if (st == IB_SUCCESS) {
  p_ctx->window_first = 1;
  p_ctx->window_last = 1;
 }

 p_ctx->p_log = p_log;
 return st;
}
