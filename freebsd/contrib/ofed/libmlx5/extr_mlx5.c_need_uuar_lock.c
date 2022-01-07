
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_context {int tot_uuars; int low_lat_uuars; } ;


 scalar_t__ mlx5_single_threaded ;

__attribute__((used)) static int need_uuar_lock(struct mlx5_context *ctx, int uuarn)
{
 if (uuarn == 0 || mlx5_single_threaded)
  return 0;

 if (uuarn >= (ctx->tot_uuars - ctx->low_lat_uuars) * 2)
  return 0;

 return 1;
}
