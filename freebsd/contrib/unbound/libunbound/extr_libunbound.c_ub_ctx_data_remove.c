
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ub_ctx {int local_zones; } ;


 int LDNS_RR_CLASS_IN ;
 int UB_NOERROR ;
 int UB_SYNTAX ;
 int free (int *) ;
 int local_zones_del_data (int ,int *,size_t,int,int ) ;
 int parse_dname (char const*,int **,size_t*,int*) ;
 int ub_ctx_finalize (struct ub_ctx*) ;

int ub_ctx_data_remove(struct ub_ctx* ctx, const char *data)
{
 uint8_t* nm;
 int nmlabs;
 size_t nmlen;
 int res = ub_ctx_finalize(ctx);
 if (res) return res;

 if(!parse_dname(data, &nm, &nmlen, &nmlabs))
  return UB_SYNTAX;

 local_zones_del_data(ctx->local_zones, nm, nmlen, nmlabs,
  LDNS_RR_CLASS_IN);

 free(nm);
 return UB_NOERROR;
}
