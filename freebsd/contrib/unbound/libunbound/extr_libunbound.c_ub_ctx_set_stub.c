
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct config_stub {int isprime; int addrs; struct config_stub* next; void* name; } ;
typedef struct config_stub uint8_t ;
struct ub_ctx {int cfglock; TYPE_2__* env; scalar_t__ finalized; } ;
struct sockaddr_storage {int dummy; } ;
typedef int socklen_t ;
struct TYPE_4__ {TYPE_1__* cfg; } ;
struct TYPE_3__ {struct config_stub* stubs; } ;


 int EINVAL ;
 int ENOMEM ;
 int UB_AFTERFINAL ;
 int UB_NOERROR ;
 int UB_NOMEM ;
 int UB_SYNTAX ;
 scalar_t__ calloc (int,int) ;
 int cfg_strlist_insert (int *,char*) ;
 struct config_stub* cfg_stub_find (struct config_stub***,char const*) ;
 int config_delstub (struct config_stub*) ;
 int errno ;
 int extstrtoaddr (char const*,struct sockaddr_storage*,int *) ;
 int free (struct config_stub*) ;
 int lock_basic_lock (int *) ;
 int lock_basic_unlock (int *) ;
 int parse_dname (char const*,struct config_stub**,size_t*,int*) ;
 void* strdup (char const*) ;

int ub_ctx_set_stub(struct ub_ctx* ctx, const char* zone, const char* addr,
 int isprime)
{
 char* a;
 struct config_stub **prev, *elem;


 if(zone) {
  uint8_t* nm;
  int nmlabs;
  size_t nmlen;
  if(!parse_dname(zone, &nm, &nmlen, &nmlabs)) {
   errno=EINVAL;
   return UB_SYNTAX;
  }
  free(nm);
 } else {
  zone = ".";
 }


 if(addr) {
  struct sockaddr_storage storage;
  socklen_t stlen;
  if(!extstrtoaddr(addr, &storage, &stlen)) {
   errno=EINVAL;
   return UB_SYNTAX;
  }
 }

 lock_basic_lock(&ctx->cfglock);
 if(ctx->finalized) {
  lock_basic_unlock(&ctx->cfglock);
  errno=EINVAL;
  return UB_AFTERFINAL;
 }


 prev = &ctx->env->cfg->stubs;
 elem = cfg_stub_find(&prev, zone);
 if(!elem && !addr) {

  lock_basic_unlock(&ctx->cfglock);
  return UB_NOERROR;
 } else if(elem && !addr) {

  *prev = elem->next;
  config_delstub(elem);
  lock_basic_unlock(&ctx->cfglock);
  return UB_NOERROR;
 } else if(!elem) {

  elem=(struct config_stub*)calloc(1, sizeof(struct config_stub));
  if(elem) elem->name = strdup(zone);
  if(!elem || !elem->name) {
   free(elem);
   lock_basic_unlock(&ctx->cfglock);
   errno = ENOMEM;
   return UB_NOMEM;
  }
  elem->next = ctx->env->cfg->stubs;
  ctx->env->cfg->stubs = elem;
 }


 elem->isprime = isprime;
 a = strdup(addr);
 if(!a) {
  lock_basic_unlock(&ctx->cfglock);
  errno = ENOMEM;
  return UB_NOMEM;
 }
 if(!cfg_strlist_insert(&elem->addrs, a)) {
  lock_basic_unlock(&ctx->cfglock);
  errno = ENOMEM;
  return UB_NOMEM;
 }
 lock_basic_unlock(&ctx->cfglock);
 return UB_NOERROR;
}
