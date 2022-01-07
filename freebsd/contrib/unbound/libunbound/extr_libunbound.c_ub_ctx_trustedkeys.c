
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ub_ctx {int cfglock; TYPE_1__* env; scalar_t__ finalized; } ;
struct TYPE_4__ {int trusted_keys_file_list; } ;
struct TYPE_3__ {TYPE_2__* cfg; } ;


 int UB_AFTERFINAL ;
 int UB_NOERROR ;
 int UB_NOMEM ;
 int cfg_strlist_insert (int *,char*) ;
 int free (char*) ;
 int lock_basic_lock (int *) ;
 int lock_basic_unlock (int *) ;
 char* strdup (char const*) ;

int
ub_ctx_trustedkeys(struct ub_ctx* ctx, const char* fname)
{
 char* dup = strdup(fname);
 if(!dup) return UB_NOMEM;
 lock_basic_lock(&ctx->cfglock);
 if(ctx->finalized) {
  lock_basic_unlock(&ctx->cfglock);
  free(dup);
  return UB_AFTERFINAL;
 }
 if(!cfg_strlist_insert(&ctx->env->cfg->trusted_keys_file_list, dup)) {
  lock_basic_unlock(&ctx->cfglock);
  return UB_NOMEM;
 }
 lock_basic_unlock(&ctx->cfglock);
 return UB_NOERROR;
}
