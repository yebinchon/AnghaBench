
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibv_ah {int dummy; } ;


 int free (int ) ;
 int to_mah (struct ibv_ah*) ;

int mlx4_destroy_ah(struct ibv_ah *ah)
{
 free(to_mah(ah));

 return 0;
}
