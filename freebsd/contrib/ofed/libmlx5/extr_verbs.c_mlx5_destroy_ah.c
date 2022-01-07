
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_ah {scalar_t__ kern_ah; } ;
struct ibv_ah {int dummy; } ;


 int free (struct mlx5_ah*) ;
 int ibv_cmd_destroy_ah (struct ibv_ah*) ;
 struct mlx5_ah* to_mah (struct ibv_ah*) ;

int mlx5_destroy_ah(struct ibv_ah *ah)
{
 struct mlx5_ah *mah = to_mah(ah);
 int err;

 if (mah->kern_ah) {
  err = ibv_cmd_destroy_ah(ah);
  if (err)
   return err;
 }

 free(mah);
 return 0;
}
