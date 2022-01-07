
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct ub_ctx {TYPE_1__* local_zones; } ;
struct local_zone {int dummy; } ;
struct TYPE_3__ {int lock; } ;


 int LDNS_RR_CLASS_IN ;
 int UB_NOERROR ;
 int UB_SYNTAX ;
 int free (int *) ;
 int local_zones_del_zone (TYPE_1__*,struct local_zone*) ;
 struct local_zone* local_zones_find (TYPE_1__*,int *,size_t,int,int ) ;
 int lock_rw_unlock (int *) ;
 int lock_rw_wrlock (int *) ;
 int parse_dname (char const*,int **,size_t*,int*) ;
 int ub_ctx_finalize (struct ub_ctx*) ;

int ub_ctx_zone_remove(struct ub_ctx* ctx, const char *zone_name)
{
 struct local_zone* z;
 uint8_t* nm;
 int nmlabs;
 size_t nmlen;

 int res = ub_ctx_finalize(ctx);
 if (res) return res;

 if(!parse_dname(zone_name, &nm, &nmlen, &nmlabs)) {
  return UB_SYNTAX;
 }

 lock_rw_wrlock(&ctx->local_zones->lock);
 if((z=local_zones_find(ctx->local_zones, nm, nmlen, nmlabs,
  LDNS_RR_CLASS_IN))) {

  local_zones_del_zone(ctx->local_zones, z);
 }
 lock_rw_unlock(&ctx->local_zones->lock);
 free(nm);
 return UB_NOERROR;
}
