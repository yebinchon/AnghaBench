
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int expected_seg; int * p_log; scalar_t__ p_rbuf; int is_sa_mad; } ;
typedef TYPE_1__ osmv_rmpp_recv_ctx_t ;
typedef int osm_log_t ;
typedef int ib_api_status_t ;
typedef int cl_qlist_t ;


 int CL_ASSERT (TYPE_1__*) ;
 int FALSE ;
 int IB_INSUFFICIENT_MEMORY ;
 int IB_SUCCESS ;
 int cl_qlist_init (scalar_t__) ;
 scalar_t__ malloc (int) ;
 int memset (scalar_t__,int ,int) ;

ib_api_status_t
osmv_rmpp_recv_ctx_init(osmv_rmpp_recv_ctx_t * p_ctx, osm_log_t * p_log)
{
 ib_api_status_t st = IB_SUCCESS;

 CL_ASSERT(p_ctx);

 p_ctx->is_sa_mad = FALSE;

 p_ctx->p_rbuf = malloc(sizeof(cl_qlist_t));
 if (p_ctx->p_rbuf) {
  memset(p_ctx->p_rbuf, 0, sizeof(cl_qlist_t));
  cl_qlist_init(p_ctx->p_rbuf);
  p_ctx->expected_seg = 1;
 } else
  st = IB_INSUFFICIENT_MEMORY;

 p_ctx->p_log = p_log;

 return st;
}
