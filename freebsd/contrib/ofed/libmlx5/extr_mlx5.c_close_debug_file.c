
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_context {scalar_t__ dbg_fp; } ;


 int fclose (scalar_t__) ;
 scalar_t__ stderr ;

__attribute__((used)) static void close_debug_file(struct mlx5_context *ctx)
{
 if (ctx->dbg_fp && ctx->dbg_fp != stderr)
  fclose(ctx->dbg_fp);
}
