
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ub_ctx {int local_zones; } ;


 int UB_NOERROR ;
 int local_zones_print (int ) ;
 int ub_ctx_finalize (struct ub_ctx*) ;

int ub_ctx_print_local_zones(struct ub_ctx* ctx)
{
 int res = ub_ctx_finalize(ctx);
 if (res) return res;

 local_zones_print(ctx->local_zones);

 return UB_NOERROR;
}
