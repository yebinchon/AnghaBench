
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_pd {int dummy; } ;
struct ibv_pd {int dummy; } ;


 int pd ;
 struct mlx5_pd* to_mxxx (int ,int ) ;

__attribute__((used)) static inline struct mlx5_pd *to_mpd(struct ibv_pd *ibpd)
{
 return to_mxxx(pd, pd);
}
