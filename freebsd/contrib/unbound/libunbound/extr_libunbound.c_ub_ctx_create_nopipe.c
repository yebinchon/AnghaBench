
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ub_ctx {int queries; int mods; scalar_t__ need_to_validate; struct ub_ctx* env; int * worker; int superalloc; int * alloc; int seed_rnd; int cfg; int auth_zones; int cfglock; int rrpipe_lock; int qqpipe_lock; } ;
struct module_env {int queries; int mods; scalar_t__ need_to_validate; struct module_env* env; int * worker; int superalloc; int * alloc; int seed_rnd; int cfg; int auth_zones; int cfglock; int rrpipe_lock; int qqpipe_lock; } ;
typedef int seed ;
typedef int WSADATA ;


 int ENOMEM ;
 int MAKEWORD (int,int) ;
 int WSAStartup (int ,int *) ;
 int alloc_init (int *,int *,int ) ;
 int auth_zones_create () ;
 scalar_t__ calloc (int,int) ;
 int checklock_start () ;
 int config_create_forlib () ;
 int config_delete (int ) ;
 int context_query_cmp ;
 int edns_known_options_delete (struct ub_ctx*) ;
 int edns_known_options_init (struct ub_ctx*) ;
 int errno ;
 int explicit_bzero (unsigned int*,int) ;
 int free (struct ub_ctx*) ;
 scalar_t__ getpid () ;
 int lock_basic_init (int *) ;
 int log_err (char*,int ) ;
 int log_ident_set (char*) ;
 int log_init (int *,int ,int *) ;
 int modstack_init (int *) ;
 int rbtree_init (int *,int *) ;
 scalar_t__ time (int *) ;
 int ub_initstate (unsigned int,int *) ;
 int ub_randfree (int ) ;
 scalar_t__ verbosity ;
 int wsa_strerror (int) ;

__attribute__((used)) static struct ub_ctx* ub_ctx_create_nopipe(void)
{
 struct ub_ctx* ctx;
 unsigned int seed;





 checklock_start();
 log_init(((void*)0), 0, ((void*)0));
 log_ident_set("libunbound");







 verbosity = 0;
 checklock_start();
 ctx = (struct ub_ctx*)calloc(1, sizeof(*ctx));
 if(!ctx) {
  errno = ENOMEM;
  return ((void*)0);
 }
 alloc_init(&ctx->superalloc, ((void*)0), 0);
 seed = (unsigned int)time(((void*)0)) ^ (unsigned int)getpid();
 if(!(ctx->seed_rnd = ub_initstate(seed, ((void*)0)))) {
  explicit_bzero(&seed, sizeof(seed));
  ub_randfree(ctx->seed_rnd);
  free(ctx);
  errno = ENOMEM;
  return ((void*)0);
 }
 explicit_bzero(&seed, sizeof(seed));
 lock_basic_init(&ctx->qqpipe_lock);
 lock_basic_init(&ctx->rrpipe_lock);
 lock_basic_init(&ctx->cfglock);
 ctx->env = (struct module_env*)calloc(1, sizeof(*ctx->env));
 if(!ctx->env) {
  ub_randfree(ctx->seed_rnd);
  free(ctx);
  errno = ENOMEM;
  return ((void*)0);
 }
 ctx->env->cfg = config_create_forlib();
 if(!ctx->env->cfg) {
  free(ctx->env);
  ub_randfree(ctx->seed_rnd);
  free(ctx);
  errno = ENOMEM;
  return ((void*)0);
 }

 if(!edns_known_options_init(ctx->env)) {
  config_delete(ctx->env->cfg);
  free(ctx->env);
  ub_randfree(ctx->seed_rnd);
  free(ctx);
  errno = ENOMEM;
  return ((void*)0);
 }
 ctx->env->auth_zones = auth_zones_create();
 if(!ctx->env->auth_zones) {
  edns_known_options_delete(ctx->env);
  config_delete(ctx->env->cfg);
  free(ctx->env);
  ub_randfree(ctx->seed_rnd);
  free(ctx);
  errno = ENOMEM;
  return ((void*)0);
 }
 ctx->env->alloc = &ctx->superalloc;
 ctx->env->worker = ((void*)0);
 ctx->env->need_to_validate = 0;
 modstack_init(&ctx->mods);
 rbtree_init(&ctx->queries, &context_query_cmp);
 return ctx;
}
