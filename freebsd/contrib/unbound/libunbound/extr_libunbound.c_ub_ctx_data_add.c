
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ub_ctx {int local_zones; } ;


 int UB_NOERROR ;
 int UB_NOMEM ;
 int local_zones_add_RR (int ,char const*) ;
 int ub_ctx_finalize (struct ub_ctx*) ;

int ub_ctx_data_add(struct ub_ctx* ctx, const char *data)
{
 int res = ub_ctx_finalize(ctx);
 if (res) return res;

 res = local_zones_add_RR(ctx->local_zones, data);
 return (!res) ? UB_NOMEM : UB_NOERROR;
}
