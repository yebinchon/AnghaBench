
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ub_ctx {int cfglock; TYPE_2__* env; scalar_t__ finalized; } ;
struct sockaddr_storage {int dummy; } ;
struct config_stub {int addrs; struct config_stub* next; void* name; } ;
typedef int socklen_t ;
struct TYPE_4__ {TYPE_1__* cfg; } ;
struct TYPE_3__ {struct config_stub* forwards; } ;


 int EINVAL ;
 int ENOMEM ;
 int UB_AFTERFINAL ;
 int UB_NOERROR ;
 int UB_NOMEM ;
 int UB_SYNTAX ;
 struct config_stub* calloc (int,int) ;
 int cfg_strlist_insert (int *,char*) ;
 int config_delstubs (struct config_stub*) ;
 int errno ;
 int extstrtoaddr (char const*,struct sockaddr_storage*,int *) ;
 int free (struct config_stub*) ;
 int lock_basic_lock (int *) ;
 int lock_basic_unlock (int *) ;
 int log_assert (struct config_stub*) ;
 scalar_t__ strcmp (void*,char*) ;
 void* strdup (char const*) ;

int
ub_ctx_set_fwd(struct ub_ctx* ctx, const char* addr)
{
 struct sockaddr_storage storage;
 socklen_t stlen;
 struct config_stub* s;
 char* dupl;
 lock_basic_lock(&ctx->cfglock);
 if(ctx->finalized) {
  lock_basic_unlock(&ctx->cfglock);
  errno=EINVAL;
  return UB_AFTERFINAL;
 }
 if(!addr) {

  if(ctx->env->cfg->forwards &&
   strcmp(ctx->env->cfg->forwards->name, ".") == 0) {
   s = ctx->env->cfg->forwards;
   ctx->env->cfg->forwards = s->next;
   s->next = ((void*)0);
   config_delstubs(s);
  }
  lock_basic_unlock(&ctx->cfglock);
  return UB_NOERROR;
 }
 lock_basic_unlock(&ctx->cfglock);


 if(!extstrtoaddr(addr, &storage, &stlen)) {
  errno=EINVAL;
  return UB_SYNTAX;
 }


 lock_basic_lock(&ctx->cfglock);
 if(!ctx->env->cfg->forwards ||
  strcmp(ctx->env->cfg->forwards->name, ".") != 0) {
  s = calloc(1, sizeof(*s));
  if(!s) {
   lock_basic_unlock(&ctx->cfglock);
   errno=ENOMEM;
   return UB_NOMEM;
  }
  s->name = strdup(".");
  if(!s->name) {
   free(s);
   lock_basic_unlock(&ctx->cfglock);
   errno=ENOMEM;
   return UB_NOMEM;
  }
  s->next = ctx->env->cfg->forwards;
  ctx->env->cfg->forwards = s;
 } else {
  log_assert(ctx->env->cfg->forwards);
  s = ctx->env->cfg->forwards;
 }
 dupl = strdup(addr);
 if(!dupl) {
  lock_basic_unlock(&ctx->cfglock);
  errno=ENOMEM;
  return UB_NOMEM;
 }
 if(!cfg_strlist_insert(&s->addrs, dupl)) {
  lock_basic_unlock(&ctx->cfglock);
  errno=ENOMEM;
  return UB_NOMEM;
 }
 lock_basic_unlock(&ctx->cfglock);
 return UB_NOERROR;
}
