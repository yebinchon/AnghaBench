
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mlx5_round_up_power_of_two (long long) ;

__attribute__((used)) static int align_queue_size(long long req)
{
 return mlx5_round_up_power_of_two(req);
}
