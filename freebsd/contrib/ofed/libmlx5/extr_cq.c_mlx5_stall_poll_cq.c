
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int get_cycles () ;
 int mlx5_stall_num_loop ;

__attribute__((used)) static void mlx5_stall_poll_cq(void)
{
 int i;

 for (i = 0; i < mlx5_stall_num_loop; i++)
  (void)get_cycles();
}
