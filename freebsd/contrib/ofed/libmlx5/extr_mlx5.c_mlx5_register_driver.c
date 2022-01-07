
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mlx5_driver_init ;
 int verbs_register_driver (char*,int ) ;

__attribute__((used)) static __attribute__((constructor)) void mlx5_register_driver(void)
{
 verbs_register_driver("mlx5", mlx5_driver_init);
}
