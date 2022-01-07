
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_context {void* dbg_fp; } ;


 void* fopen (char*,char*) ;
 int fprintf (void*,char*,char*) ;
 char* getenv (char*) ;
 void* stderr ;

__attribute__((used)) static void open_debug_file(struct mlx5_context *ctx)
{
 char *env;

 env = getenv("MLX5_DEBUG_FILE");
 if (!env) {
  ctx->dbg_fp = stderr;
  return;
 }

 ctx->dbg_fp = fopen(env, "aw+");
 if (!ctx->dbg_fp) {
  fprintf(stderr, "Failed opening debug file %s, using stderr\n", env);
  ctx->dbg_fp = stderr;
  return;
 }
}
